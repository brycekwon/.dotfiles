local keymap = vim.keymap


-- set map leader
vim.g.mapleader = ' '


-- set registers not to copy content on delete --

keymap.set('n', 'x', '"_x')
keymap.set('v', 'x', '"_x')

keymap.set('n', 'd', '"_d')
keymap.set('v', 'd', '"_d')

keymap.set('n', 'dd', '"_dd')

keymap.set('n', 'D', '"_D')
keymap.set('v', 'D', '"_D')


-- remap default keybindings --

keymap.set('n', '.', '$')
keymap.set('v', '.', '$')

keymap.set('n', ',', '^')
keymap.set('v', ',', '^')

keymap.set('n', ';', '{')
keymap.set('v', ';', '{')

keymap.set('n', "'", '}')
keymap.set('v', "'", '}')

keymap.set('n', '<C-u>', '<CMD>undo<CR>')
keymap.set('v', '<C-u>', '<CMD>undo<CR>')

keymap.set('n', '<C-r>', '<CMD>redo<CR>')
keymap.set('v', '<C-r>', '<CMD>redo<CR>')


-- shortcuts for window management --

keymap.set('n', '<leader>s=', '<CMD>sp<CR>')
keymap.set('v', '<leader>s=', '<CMD>sp<CR>')

keymap.set('n', '<leader>s-', '<CMD>vsp<CR>')
keymap.set('v', '<leader>s-', '<CMD>vsp<CR>')

keymap.set('n', '<leader>sx', '<CMD>close<CR>')
keymap.set('v', '<leader>sx', '<CMD>close<CR>')


-- shortcuts for tab management --

keymap.set('n', '<leader>to', '<CMD>tabnew<CR>')
keymap.set('v', '<leader>to', '<CMD>tabnew<CR>')

keymap.set('n', '<leader>tx', '<CMD>tabclose<CR>')
keymap.set('v', '<leader>tx', '<CMD>tabclose<CR>')

keymap.set('n', '<leader>t,', '<CMD>tabp<CR>')
keymap.set('v', '<leader>t,', '<CMD>tabp<CR>')

keymap.set('n', '<leader>t.', '<CMD>tabn<CR>')
keymap.set('v', '<leader>t.', '<CMD>tabn<CR>')

keymap.set('n', '<C-1>', '<CMD>tabn1<CR>')
keymap.set('n', '<C-2>', '<CMD>tabn2<CR>')
keymap.set('n', '<C-3>', '<CMD>tabn3<CR>')
keymap.set('n', '<C-4>', '<CMD>tabn4<CR>')
keymap.set('n', '<C-5>', '<CMD>tabn5<CR>')
keymap.set('n', '<C-6>', '<CMD>tabn6<CR>')
keymap.set('n', '<C-7>', '<CMD>tabn7<CR>')
keymap.set('n', '<C-8>', '<CMD>tabn8<CR>')
keymap.set('n', '<C-9>', '<CMD>tabn9<CR>')
keymap.set('v', '<C-1>', '<CMD>tabn1<CR>')
keymap.set('v', '<C-2>', '<CMD>tabn2<CR>')
keymap.set('v', '<C-3>', '<CMD>tabn3<CR>')
keymap.set('v', '<C-4>', '<CMD>tabn4<CR>')
keymap.set('v', '<C-5>', '<CMD>tabn5<CR>')
keymap.set('v', '<C-6>', '<CMD>tabn6<CR>')
keymap.set('v', '<C-7>', '<CMD>tabn7<CR>')
keymap.set('v', '<C-8>', '<CMD>tabn8<CR>')
keymap.set('v', '<C-9>', '<CMD>tabn9<CR>')


-- shortcuts for navigation --

keymap.set('v', 'K', ":m '<-2<CR>gv=gv")    -- move visual block up
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")    -- move visual block down

keymap.set('n', '<C-`>', ':e#<CR>')     -- jump to previous buffer
keymap.set('v', '<C-`>', ':e#<CR>')     -- jump to previous buffer


-- disabled default keymaps --
keymap.set("n", "c", "<Nop>")
keymap.set("n", "C", "<Nop>")
keymap.set("v", "c", "<Nop>")
keymap.set("v", "C", "<Nop>")
keymap.set("v", "s", "<Nop>")
keymap.set("v", "c", "<Nop>")
keymap.set("v", "cl", "<Nop>")
keymap.set("v", "cc", "<Nop>")
keymap.set("v", "0", "<Nop>")
keymap.set("n", "s", "<Nop>")
keymap.set("n", "c", "<Nop>")
keymap.set("n", "cl", "<Nop>")
keymap.set("n", "cc", "<Nop>")
keymap.set("n", "0", "<Nop>")
keymap.set("n", "u", "<Nop>")
keymap.set("n", "D", "<Nop>")
keymap.set("v", "D", "<Nop>")
keymap.set("n", "{", "<Nop>")
keymap.set("n", "}", "<Nop>")
keymap.set("v", "{", "<Nop>")
keymap.set("v", "}", "<Nop>")
keymap.set("n", "R", "<Nop>")
keymap.set("v", "R", "<Nop>")
keymap.set("n", "q", "<Nop>")
keymap.set("v", "q", "<Nop>")

