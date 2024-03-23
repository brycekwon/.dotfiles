local g = vim.g
local opt = vim.opt


-- enable line numbers (relative) --
opt.number = true
opt.relativenumber = true

-- enable cursor line --
opt.cursorline = true

-- set terminal color --
opt.termguicolors = true

-- miscellaneous visual options --
opt.conceallevel = 2
opt.scrolloff = 8
opt.updatetime = 50
opt.signcolumn = 'yes'
opt.colorcolumn = '100'

-- enable default tab behavior --
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- disable auto wrapping and folding --
opt.wrap = false
opt.foldenable = true

-- set search options --
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- set window options --
opt.splitright = true
opt.splitbelow = true

-- set clipboard options --
opt.clipboard:append('unnamedplus')

-- disable backups and swapfiles --
opt.backup = false
opt.swapfile = false

-- disabled in favor of nvim-tree --
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- unused provider plugins --
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

