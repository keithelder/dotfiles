-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle LazyGit" }) -- toggle lazygit

-- execute python
-- keymap.set("n", "<leader>bp", ":w <bar> exec :vsplit term://python3 % <CR>", { desc = "Execute python file" })
keymap.set("n", "<leader>bp", ":w <bar> :vsplit term://python3 % <CR>", { desc = "Execute python file" })

-- execute c# file
-- keymap.set("n", "<leader>bc", ":w <bar> exec :vsplit term://dotnet run % <CR>", { desc = "Execute c# file" })
keymap.set("n", "<leader>bc", ":w <bar> :vsplit term://dotnet run % <CR>", { desc = "Execute c# file" })

-- compiler commands for languages using compiler.nvim plugin
keymap.set("n", "<leader>cc", ":CompilerRun<CR>", { desc = "Compile current file" })

-- Open compiler
keymap.set("n", "<F5>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
keymap.set(
  "n",
  "<S-F5>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

-- Toggle compiler results
keymap.set("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
