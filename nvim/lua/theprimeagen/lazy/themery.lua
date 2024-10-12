return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {"gruvbox","tokyonight","rose-pine","kanagawa","catppuccin"},
	livePreview = true,
      })
    end
  }
