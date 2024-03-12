local keymap = vim.keymap
local g = vim.g

g.mapleader = " "

keymap.set("n", "x", '"_x')
keymap.set("v", "x", '"_x')
keymap.set("n", "dd", '"_dd')
keymap.set("n", "d", '"_d')
keymap.set("n", "D", '"_D')
keymap.set("v", "d", '"_d')
keymap.set("v", "D", '"_D')

keymap.set("n", ".", "$")       -- remap "jump to end of line"
keymap.set("n", ",", "^")       -- remap "jump to beginning of line"
keymap.set("v", ".", "$")       -- remap "jump to end of line"
keymap.set("v", ",", "^")       -- remap "jump to beginning of line"
keymap.set("n", ";", "{")       -- remap "jump to previous paragraph"
keymap.set("n", "'", "}")       -- remap "jump to next paragraph"
keymap.set("v", ";", "{")       -- remap "jump to previous paragraph"
keymap.set("v", "'", "}")       -- remap "jump to next paragraph"

keymap.set("n", "<leader>qq", ":q<CR>")     -- map "quit"
keymap.set("n", "<leader>ww", ":w<CR>")     -- map "save"
keymap.set("n", "<leader>wa", ":wa<CR>")    -- map "save all"
keymap.set("n", "<leader>qa", ":qa<CR>")    -- map "quit all"
keymap.set("n", "<leader>qw", ":wq<CR>")    -- map "save and quit"

keymap.set("n", "<leader>s=", ":sp<CR>")        -- map "horizontal split window"
keymap.set("n", "<leader>s-", ":vsp<CR>")       -- map "vertical split window"
keymap.set("n", "<leader>sx", ":close<CR>")     -- map "close current window"

keymap.set("n", "<leader>to", ":tabnew<CR>")        -- map "new tab"
keymap.set("n", "<leader>tx", ":tabclose<CR>")      -- map "close tab"
keymap.set("n", "<leader>tp", ":tabp<CR>")          -- map "switch to the previous tab"
keymap.set("n", "<leader>tn", ":tabn<CR>")          -- map "switch to the next tab"
keymap.set("n", "<C-1>", ":tabn1<CR>")              -- map "move to tab tabn1"
keymap.set("n", "<C-2>", ":tabn2<CR>")              -- map "move to tab tabn2"
keymap.set("n", "<C-3>", ":tabn3<CR>")              -- map "move to tab tabn3"
keymap.set("n", "<C-4>", ":tabn4<CR>")              -- map "move to tab tabn4"
keymap.set("n", "<C-5>", ":tabn5<CR>")              -- map "move to tab tabn5"
keymap.set("n", "<C-6>", ":tabn6<CR>")              -- map "move to tab tabn6"
keymap.set("n", "<C-7>", ":tabn7<CR>")              -- map "move to tab tabn7"
keymap.set("n", "<C-8>", ":tabn8<CR>")              -- map "move to tab tabn8"
keymap.set("n", "<C-9>", ":tabn9<CR>")              -- map "move to tab tabn9"

keymap.set("v", "K", ":m '<-2<CR>gv=gv")    -- shortcut "move visual block up"
keymap.set("v", "J", ":m '>+1<CR>gv=gv")    -- shortcut "move visual block down"

keymap.set("n", "<C-u>", ":undo<CR>")       -- remap "undo"
keymap.set("n", "<C-r>", ":redo<CR>")       -- remap "redo"

keymap.set("n", "<C-`>", ":e#<CR>")

-- disable keymaps --
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
keymap.set("n", "G", "<Nop>")
keymap.set("n", "gg", "<Nop>")
keymap.set("n", "D", "<Nop>")
keymap.set("v", "D", "<Nop>")
keymap.set("n", "{", "<Nop>")
keymap.set("n", "}", "<Nop>")
keymap.set("v", "{", "<Nop>")
keymap.set("v", "}", "<Nop>")
keymap.set("n", "R", "<Nop>")
keymap.set("v", "R", "<Nop>")
