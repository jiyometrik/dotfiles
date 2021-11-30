-- vim.g.better_whitespace_enabled = 1
-- vim.g.strip_whitespace_on_save = 1
-- vim.g.strip_whitespace_confirm = 0
-- vim.g.current_line_whitespace_disabled_soft = 1
-- vim.g.strip_whitelines_at_eof = 1

vim.cmd('autocmd BufWrite * StripWhitespace')
