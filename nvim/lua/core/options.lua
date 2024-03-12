local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = true
opt.foldenable = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.updatetime = 50
opt.colorcolumn = "100"

opt.splitright = true
opt.splitbelow = true

opt.clipboard:append("unnamedplus")

opt.backup = false
opt.swapfile = false
opt.conceallevel = 2

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

