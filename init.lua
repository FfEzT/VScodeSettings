local g = vim.g
local opt = vim.opt


opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.colorcolumn = '80'

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false


g.mapleader = " "

vim.keymap.set('n', '<Esc>', '<cmd> nohl <CR>')

vim.keymap.set('v', "<", '<gv')
vim.keymap.set('v', ">", '>gv')


if vim.g.vscode then
  local vscode = require('vscode')

  vim.keymap.set({'n', 'v'}, "zc", "<Cmd>lua require('vscode').action('editor.fold')<CR>")
  vim.keymap.set({'n', 'v'}, "zo", "<Cmd>lua require('vscode').action('editor.unfold')<CR>")
  vim.keymap.set({'n', 'v'}, "<leader>zc", "<Cmd>lua require('vscode').action('editor.foldAll')<CR>")
  vim.keymap.set({'n', 'v'}, "<leader>zo", "<Cmd>lua require('vscode').action('editor.unfoldAll')<CR>")

  vim.keymap.set('n', "T(", "<Cmd>lua require('vscode').action('workbench.action.terminal.fontZoomIn')<CR>")
  vim.keymap.set('n', "T)", "<Cmd>lua require('vscode').action('workbench.action.terminal.fontZoomOut')<CR>")
  vim.keymap.set('n', "<C-w>(", "<Cmd>lua require('vscode').action('editor.action.fontZoomIn')<CR>")
  vim.keymap.set('n', "<C-w>)", "<Cmd>lua require('vscode').action('editor.action.fontZoomOut')<CR>")

  vim.keymap.set('n', "<leader>rn", "<Cmd>set relativenumber<CR>")
  vim.keymap.set('n', "<leader>nr", "<Cmd>set norelativenumber<CR>")

  vim.keymap.set('n', "<leader>w", "<Cmd>w!<CR>")
  vim.keymap.set('n', "<leader>q", "<Cmd>q!<CR>")
  vim.keymap.set('n', "<leader>x", "<Cmd>q<CR>")


  vim.keymap.set({'n', 'v'}, "<leader>c", "<Cmd>lua require('vscode').action('editor.action.commentLine')<CR>")

  -- vim.keymap.set({'n', 'v'}, "<C-c>", "<Cmd>lua require('vscode').call('editor.action.clipboardCopyAction')<CR>")

  vscode.notify('Your init.lua has been loaded')
else
  -- ordinary Neovim
end
