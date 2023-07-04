local ok, lazy = pcall(require, "lazy")
if not ok then
	return
end

lazy.setup({
	install = {
		colorscheme = { "catppuccin" },
	},
	root = vim.fn.stdpath("data") .. "/lazy",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- LSP Stuff
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"jose-elias-alvarez/null-ls.nvim",
			"glepnir/lspsaga.nvim",
			"RRethy/vim-illuminate",

			-- Completions
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"dcampos/nvim-snippy",
			"doxnit/cmp-luasnip-choice",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"lukas-reineke/cmp-under-comparator",
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-vsnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-copilot",
		},
		config = function()
			-- Lsp Configs
			require("plugins.configs.lsp")
			-- Completions
			require("plugins.configs.cmp")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("plugins.configs.colorschemes")
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "olimorris/onedarkpro.nvim" },
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
		config = function()
			require("plugins.configs.ui.bufferline")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
		-- config = function()
		-- 	require("plugins.configs.ui.lualine")
		-- end,
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"ravenxrz/DAPInstall.nvim",
		},
		config = function()
			require("plugins.configs.ui.dap")
		end,
	},
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
		},
		opts = require("plugins.configs.lsp.bbq"),
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		keys = {
			{ "<leader>e", "<cmd>NeoTreeFocusToggle<cr>", desc = "NeoTree" },
		},
		config = function()
			require("plugins.configs.ui.neotree")
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufEnter",
		config = function()
			require("plugins.configs.ui.indent_blankline")
		end,
	},
	{
		"alvan/vim-closetag",
		config = function()
			vim.g.closetag_filenames = "*.html,*.xhtml,*.phtml"
			vim.g.closetag_xhtml_filenames = "*.xhtml,*.jsx"
		end,
	},
	{ "windwp/nvim-autopairs", config = true, event = "InsertEnter" },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("plugins.configs.telescope")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{ "ahmedkhalf/project.nvim" },
	{ "numToStr/Comment.nvim", config = true, event = "BufEnter" },
	{ "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "NeoTree" },
		},
	},

	{
		"karb94/neoscroll.nvim",
		event = "BufEnter",
		config = function()
			require("neoscroll").setup({})
		end,
	},
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("plugins.configs.ui.toggleterm")
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("plugins.configs.ui.scrollbar")
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			require("plugins.configs.ui.alpha")
		end,
	},
	{
		"lewis6991/impatient.nvim",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.configs.treesitter")
		end,
	},
	{ "windwp/nvim-ts-autotag" },
	{
		"iamcco/markdown-preview.nvim",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{
		"toppair/peek.nvim",
		build = "deno task --quiet build:fast",
		config = function()
			vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
			vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
		end,
	},
	{ "github/copilot.vim" },
	{
		"christoomey/vim-tmux-navigator",
	},
	{
		"max397574/better-escape.nvim",
		opts = {
			mapping = { "jk", "jj" },
			timeout = vim.o.timeoutlen,
			clear_empty_lines = false,
			keys = "<Esc>",
		},
		event = { "CmdlineEnter", "InsertEnter", "CursorHold", "CursorMoved" },
	},
	{
		"doums/monark.nvim",
		opts = {
			clear_on_normal = true,
			sticky = true,
			offset = 2,
			timeout = 300,
			i_idle_to = 1000,
			modes = {
				normal = { " ", "MonarkNormal" },
				visual = { " ", "MonarkVisual" },
				visual_l = { " ", "MonarkVisualLine" },
				visual_b = { " ", "MonarkVisualBlock" },
				select = { " ", "MonarkSelect" },
				insert = { " ", "MonarkInsert" },
				replace = { " ", "MonarkReplace" },
				terminal = { " ", "MonarkTerminal" },
			},
			hl_mode = "combine",
			ignore = { "c" },
		},
		event = "InsertEnter",
	},
	{
		"folke/twilight.nvim",
		config = function()
			require("plugins.configs.ui.twilight")
			-- vim.cmd("Twilight")
		end,
	},
	{
		"kevinhwang91/rnvimr",
		init = function()
			require("plugins.configs.ranger")
		end,
		lazy = false,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
        config = function ()
          require('plugins.configs.ui.noice')
        end
	},
    { "anuvyklack/windows.nvim",
       dependencies = {
          "anuvyklack/middleclass",
          "anuvyklack/animation.nvim"
       },
       config = function()
          vim.o.winwidth = 10
          vim.o.winminwidth = 10
          vim.o.equalalways = false
          require('windows').setup()
       end
    },
    { 'freddiehaddad/feline.nvim',
        config = function ()
			require("plugins.configs.ui.feline")
        end
    },
    {
      "folke/flash.nvim",
      event = "VeryLazy",
      ---@type Flash.Config
      opts = {},
      keys = {
        {
          "s",
          mode = { "n", "x", "o" },
          function()
            -- default options: exact mode, multi window, all directions, with a backdrop
            require("flash").jump()
          end,
        },
        {
          "S",
          mode = { "o", "x" },
          function()
            require("flash").treesitter()
          end,
        },
      },
    },
})
