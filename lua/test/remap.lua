-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")


vim.g["diagnostic_is_visible"] = true
vim.diagnostic.enable()
local function toggle_diagnostics()
    if vim.g.diagnostic_is_visible then
        vim.diagnostic.disable()
    else
        vim.diagnostic.enable()
    end
    vim.g.diagnostic_is_visible = not vim.g.diagnostic_is_visible
end

vim.keymap.set("n", "<leader>dt", toggle_diagnostics)

-- move selected lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- append next line to current line
vim.keymap.set("n", "J", "mzJ`z")
-- Go half a page up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep cursor in the middle when using find in file
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy to system clipboard
vim.keymap.set("n", "<leader>tp", "\"*p")
vim.keymap.set("n", "<leader>ty", "\"*y")
vim.keymap.set("v", "<leader>ty", "\"*y")
vim.keymap.set("n", "<leader>tY", "\"*Y")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- We do not know what Q does and we do not want to find out.
vim.keymap.set("n", "Q", "<nop>")

-- quickfix shortcuts
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- open squiggle
vim.keymap.set("n", "<leader>{", "a{<CR>}<ESC>%a<CR>")

-- swap buffers
vim.keymap.set("n", "<leader>bb", ":b#<CR>")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
vim.keymap.set("n", "<leader>bc", ":bd<CR>")

-- change window
vim.keymap.set("n", "<leader>w", "<C-w>")
