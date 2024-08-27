-- following options are the default
require'nvim-tree'.setup {
  view = {
		side = "left",
		width = 50,
  },
  filters = {
		dotfiles = true
  },
  actions = {
		open_file = {
			quit_on_open = true,
		},
  },
  renderer = {
		root_folder_label = false,
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
			corner = "└",
			edge = "│",
			item = "│",
			bottom = "─",
			none = " ",
			},
		},
  },
}

require'nvim-web-devicons'.setup {
	color_icons = true;
	strict = true;
	default = false;
	override_by_extension = {
		["js"] = {
			icon = "hola",
			color = "#cbcb41",
			cterm_color = "185",
			name = "Astro",
		},	
	}
}

vim.g["nvim_tree_show_icons"] = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}

vim.g["nvim_tree_quit_on_open"] = 1;
