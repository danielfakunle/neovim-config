return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { icons_enabled = true, theme = "vscode", section_separators = { left = "", right = "" } },
      sections = {
        lualine_a = {
          -- {
          --   function()
          --     return ""
          --   end,
          -- },
          { "mode", icon = { "", align = "left" } },
        },
        lualine_b = { { "branch", separator = { right = "" }, color = { bg = "#373737" } } },
        lualine_c = {
          LazyVim.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = LazyVim.config.icons.diagnostics.Error,
              warn = LazyVim.config.icons.diagnostics.Warn,
              info = LazyVim.config.icons.diagnostics.Info,
              hint = LazyVim.config.icons.diagnostics.Hint,
            },
          },
          { "filetype", separator = "", padding = { left = 1, right = 0 } },
        },
        lualine_y = {
          {
            function()
              return ""
            end,
            color = { bg = "#f44747", fg = "#262626" },
            padding = { left = 0, right = 1 },
          },
          {
            "progress",
            color = { fg = "#fff", bg = "#373737" },
            separator = { left = "", right = "" },
            padding = { left = 1, right = 0 },
          },
          { "location", color = { fg = "#fff", bg = "#373737" }, padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          {
            function()
              return "󰅐"
            end,
            color = { bg = "#5CB6F8", fg = "#373737" },
            separator = { left = "", right = "" },
            padding = { left = 0, right = 1 },
          },
          {
            function()
              return os.date("%R")
            end,
            color = { fg = "#5CB6F8", bg = "#373737" },
            separator = { left = "", right = "" },
          },
        },
      },
    },
  },
}
