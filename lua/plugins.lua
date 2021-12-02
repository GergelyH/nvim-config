vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup{
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- TODO refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
        use {"neovim/nvim-lspconfig"}
        use {"glepnir/lspsaga.nvim"}
        use {"kabouzeid/nvim-lspinstall"}

        -- Additional lsp
        -- use  {"norcalli/snippets.nvim", opt = True}

        -- Telescope
        use {"nvim-lua/popup.nvim"}
        use {"nvim-lua/plenary.nvim"}
        use {"nvim-telescope/telescope.nvim", requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
        use {"nvim-telescope/telescope-fzy-native.nvim", requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}

        -- Debugging
        use {"mfussenegger/nvim-dap"}

        -- Autocomplete
        use {"hrsh7th/nvim-compe"}
        -- use {"nvim-lua/completion-nvim"}
        use {"hrsh7th/vim-vsnip"}
        use {"rafamadriz/friendly-snippets"}

        -- Treesitter
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use {"windwp/nvim-ts-autotag"}

        -- Explorer
        use {"kyazdani42/nvim-tree.lua"}
        -- TODO remove when open on dir is supported by nvimtree
        use "kevinhwang91/rnvimr"

        -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
        -- use {"lewis6991/gitsigns.nvim"}
        -- use {"liuchengxu/vim-which-key"}
        use {"folke/which-key.nvim"}
        use {"ChristianChiarulli/dashboard-nvim"}
        use {"windwp/nvim-autopairs"}
        use {"terrortylor/nvim-comment"}
        use {"kevinhwang91/nvim-bqf"}

        -- Color
        use {"christianchiarulli/nvcode-color-schemes.vim"}

        -- Icons
        use {"kyazdani42/nvim-web-devicons"}

        -- Status Line and Bufferline
        use {"glepnir/galaxyline.nvim"}
        use {"romgrk/barbar.nvim"}

        -- Flutter
        -- use {"thosakwe/vim-flutter"}
		use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

        -- vim-surround
        use {"machakann/vim-sandwich" }

        -- Sneak
        use {"justinmk/vim-sneak"}

        --tpope best
		use {"tpope/vim-unimpaired"}

		-- use {"ray-x/aurora"}
		-- use {"tjdevries/colorbuddy.nvim"}
		-- use {"tjdevries/gruvbuddy.nvim", requires = 'tjdevries/colorbuddy.nvim'}
		-- use {"DilanGMB/nightbuddy", requires = 'tjdevries/colorbuddy.nvim'}
		-- use {"marko-cerovac/material.nvim"}
		-- use {"Th3Whit3Wolf/spacebuddy", requires = 'tjdevries/colorbuddy.nvim'}
		-- use {"folke/tokyonight.nvim"}
		-- use {"rafamadriz/neon"}
		-- use {"tjdevries/gruvbuddy.nvim", requires = 'tjdevries/colorbuddy.vim'}
		-- use {"DilanGMB/nightbuddy", requires = 'tjdevries/colorbuddy.vim'}
		-- use {"marko-cerovac/material.nvim", requires = 'tjdevries/colorbuddy.vim'}
		-- use {"Th3Whit3Wolf/spacebuddy", requires = 'tjdevries/colorbuddy.vim'}

		-- Extensions (dart)
		use {"nvim-lua/lsp_extensions.nvim"}

        -- Colorschemes
		use {"sainnhe/gruvbox-material"}
		-- use {"Th-6Whit3Wolf/one-nvim"}
		-- use {"navarasu/onedark.nvim"}
		-- use {"Th3Whit3Wolf/space-nvim"}
        -- Show cursor moves
		-- use {"edluffy/specs.nvim"}
		-- use {"edluffy/specs.nvim"}
		-- use {"edluffy/specs.nvim"}

        -- Smooth scroll
        -- use 'karb94/neoscroll.nvim'

        -- Reload
		use {"famiu/nvim-reload"}

        -- Colorizer
		use {"norcalli/nvim-colorizer.lua"}
		use {
		  "folke/trouble.nvim",
		  requires = "kyazdani42/nvim-web-devicons",
		  config = function()
			require("trouble").setup {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
			}
		  end
		}
    end
}
