-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMonoNl Nerd Font:h13" -- text below applies for VimScript
  vim.g.neovide_scale_factor = 0.8
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_animation_length = 0.11
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_cursor_animate_command_line = true
end
