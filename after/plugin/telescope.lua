local status, telescope = pcall(require, "telescope")
if(not status) then return end
local builtin = require("telescope.builtin")

telescope.setup {
    defaults = {
        preview = {
            check_mime_type = false
        }
    }
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
