-- Load lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Automatically load all plugin files from lua/theprimeagen/lazy/
local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/theprimeagen/lazy/", "*.lua", false, true)

local plugins = {}
for _, file in ipairs(plugin_files) do
    local plugin = dofile(file)
    table.insert(plugins, plugin)
end

require("lazy").setup({
    spec = plugins,  -- Load all plugins from the `lazy` directory
    change_detection = { notify = false }
})

ColorMyPencils()
