-- telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>bf", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>hf", telescope_builtin.help_tags, {})
vim.keymap.set("n", "<leader>pf", telescope_builtin.find_files, {})
vim.keymap.set("n", "<C-p>", telescope_builtin.git_files, {})
vim.keymap.set("n", "<leader>pe", function ()
    telescope_builtin.diagnostics({bufnr=0})
end)
vim.keymap.set("n", "<leader>ps", function()
	telescope_builtin.grep_string({ search = vim.fn.input("Grep ? ") })
end)

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
