return {
    "ThePrimeagen/harpoon",
    config = function()
        require("harpoon").setup({
            -- Customize your Harpoon settings here (optional)
        })

        -- Optional key mappings for Harpoon
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        -- Add files to Harpoon's mark list
        vim.keymap.set("n", "<leader>a", mark.add_file)

        -- Toggle the Harpoon quick menu
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        -- Jump to specific files in Harpoon's list (you can adjust these to your preference)
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end
}
