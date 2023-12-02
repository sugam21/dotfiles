return {

  { "stevearc/dressing.nvim", enabled = false },

  {
    "quarto-dev/quarto-nvim",
    opts = {
      lspFeatures = {
        enabled = true,
        languages = { "r", "python", "julia", "bash", "html", "lua" },
        chunks = "curly", -- 'curly' or 'all'
        diagnostics = {
          enabled = true,
          triggers = { "BufWritePost" },
        },
        codeRunner = {
          enabled = false,
          default_method = "slime", -- 'molten' or 'slime'
          ft_runners = {}, -- filetype to runner, ie. `{ python = "molten" }`.
          -- Takes precedence over `default_method`
          never_run = { "yaml" }, -- filetypes which are never sent to a code runner
        },
        completion = {
          enabled = true,
        },
      },
    },
    ft = "quarto",
    keys = {
      { "<leader>qa", ":QuartoActivate<cr>", desc = "quarto activate" },
      { "<leader>qp", ":lua require'quarto'.quartoPreview()<cr>", desc = "quarto preview" },
      { "<leader>qq", ":lua require'quarto'.quartoClosePreview()<cr>", desc = "quarto close" },
      { "<leader>qh", ":QuartoHelp ", desc = "quarto help" },
      { "<leader>qe", ":lua require'otter'.export()<cr>", desc = "quarto export" },
      { "<leader>qE", ":lua require'otter'.export(true)<cr>", desc = "quarto export overwrite" },
      { "<leader>qrr", ":QuartoSendAbove<cr>", desc = "quarto run to cursor" },
      { "<leader>qra", ":QuartoSendAll<cr>", desc = "quarto run all" },
      { "<leader><cr>", ":SlimeSend<cr>", desc = "send code chunk" },
      { "<c-cr>", ":SlimeSend<cr>", desc = "send code chunk" },
      { "<c-cr>", "<esc>:SlimeSend<cr>i", mode = "i", desc = "send code chunk" },
      { "<c-cr>", "<Plug>SlimeRegionSend<cr>", mode = "v", desc = "send code chunk" },
      { "<cr>", "<Plug>SlimeRegionSend<cr>", mode = "v", desc = "send code chunk" },
      { "<leader>ctr", ":split term://R<cr>", desc = "terminal: R" },
      { "<leader>cti", ":split term://ipython<cr>", desc = "terminal: ipython" },
      { "<leader>ctp", ":split term://python<cr>", desc = "terminal: python" },
      { "<leader>ctj", ":split term://julia<cr>", desc = "terminal: julia" },
    },
  },

  {
    "jmbuhr/otter.nvim",
    opts = {
      buffers = {
        set_filetype = true,
      },
    },
  },

  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     { "jmbuhr/otter.nvim" },
  --     { "jc-doyle/cmp-pandoc-references" },
  --     { "kdheepak/cmp-latex-symbols" },
  --     { "ray-x/cmp-treesitter" },
  --     { "f3fora/cmp-spell" },
  --   },
  --   opts = function(_, opts)
  --     ---@param opts cmp.ConfigSchema
  --     local cmp = require("cmp")
  --     opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "otter" } }))
  --   end,
  -- },
  --
  -- send code from python/r/qmd documets to a terminal or REPL
  -- like ipython, R, bash
  {
    "jpalardy/vim-slime",
    init = function()
      vim.b["quarto_is_" .. "python" .. "_chunk"] = false
      Quarto_is_in_python_chunk = function()
        require("otter.tools.functions").is_otter_language_context("python")
      end

      vim.cmd([[
      let g:slime_dispatch_ipython_pause = 100
      function SlimeOverride_EscapeText_quarto(text)
      call v:lua.Quarto_is_in_python_chunk()
      if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk
      return ["%cpaste -q\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
      else
      return a:text
      end
      endfunction
      ]])

      local function mark_terminal()
        vim.g.slime_last_channel = vim.b.terminal_job_id
        vim.print(vim.g.slime_last_channel)
      end

      local function set_terminal()
        vim.b.slime_config = { jobid = vim.g.slime_last_channel }
      end

      -- slime, neovvim terminal
      vim.g.slime_target = "tmux"
      vim.g.slime_python_ipython = 1

      require("which-key").register({
        ["<leader>ctm"] = { mark_terminal, "mark terminal" },
        ["<leader>cts"] = { set_terminal, "set terminal" },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- clangd = {},
        -- pyright = {},
        -- r_language_server = {},
        -- julials = {},
        marksman = {
          -- also needs:
          -- $home/.config/marksman/config.toml :
          -- [core]
          -- markdown.file_extensions = ["md", "markdown", "qmd"]
          filetypes = { "markdown", "quarto" },
          root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
        },
      },
    },
  },
  { "rafamadriz/friendly-snippets" },

  -- Snippet Courtesy of @Zeioth,

  {
    "L3MON4D3/LuaSnip",
    build = vim.fn.has("win32") ~= 0 and "make install_jsregexp" or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "benfowler/telescope-luasnip.nvim",
    },
    config = function(_, opts)
      if opts then
        require("luasnip").config.setup(opts)
      end
      vim.tbl_map(function(type)
        require("luasnip.loaders.from_" .. type).lazy_load()
      end, { "vscode", "snipmate", "lua" })
      -- friendly-snippets - enable standardized comments snippets
      require("luasnip").filetype_extend("typescript", { "tsdoc" })
      require("luasnip").filetype_extend("javascript", { "jsdoc" })
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require("luasnip").filetype_extend("python", { "pydoc" })
      -- require("luasnip").filetype_extend("rust", { "rustdoc" })
      -- require("luasnip").filetype_extend("cs", { "csharpdoc" })
      -- require("luasnip").filetype_extend("java", { "javadoc" })
      -- require("luasnip").filetype_extend("c", { "cdoc" })
      require("luasnip").filetype_extend("cpp", { "cppdoc" })
      -- require("luasnip").filetype_extend("php", { "phpdoc" })
      -- require("luasnip").filetype_extend("kotlin", { "kdoc" })
      -- require("luasnip").filetype_extend("ruby", { "rdoc" })
      require("luasnip").filetype_extend("sh", { "shelldoc" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "cpp",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "java",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "css",
        "julia",
        "r",
      },
    },
  },
  -- For displaying equation
  { "jbyuki/nabla.nvim" },
}
