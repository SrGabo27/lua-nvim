require'nvim-tree'.setup {
  view = {
    side = "right",
    width = 60,
    preserve_window_proportions = true,
  },
  filters = {
    enable = true;
    dotfiles = false,
    git_ignored = false,
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
	enable = false,
      },
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
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
}

require'nvim-web-devicons'.setup {
  color_icons = true,
  strict = true,
  default = false,
  override_by_extension = {
    ["js"] = {
      icon = "",
      color = "#cbcb41",
      cterm_color = "185",
      name = "Js",
    },
  },
}

