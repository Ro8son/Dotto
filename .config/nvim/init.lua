vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")

require("lazy").setup()

vim.opt.cc = "80"

vim.opt.ts = 2
vim.opt.sts = 2
vim.opt.et = true
vim.opt.sw = 2
vim.opt.ai = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.clipboard = "unnamedplus"

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.cmd.colorscheme("rose-pine")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-i>", "<cmd>tabprevious<CR>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-o>", "<cmd>tabnext<CR>", { desc = "Move focus to the left window" })

vim.keymap.set("n", "<C-n>", "<Plug>(neorg.dirman.new-note)", { desc = "Create new Norg note" })
-- vim.keymap.set("n", "<C-m>", "<cmd>Neorg workspace notes<CR>", { desc = "Open Neorg" })

vim.keymap.set("n", "<C-p>", "<cmd>b#<CR>", { desc = "go back one buffer" })

vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
vim.diagnostic.config({ virtual_lines = true })
