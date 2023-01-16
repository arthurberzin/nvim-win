 -- https://github.com/goolord/alpha-nvim
 -- https://github.com/mhinz/vim-startify
local custom_header = {
    "                   ███████████                                                         █████    ",
    "                   ░░███░░░░░███                                                       ░░███    ",
    "                    ░███    ░███     ██████     ████████      ██████      ████████     ███████  ",
    "                    ░██████████     ███░░███   ░░███░░███    ░░░░░███    ░░███░░███   ░░░███░   ",
    "                    ░███░░░░░███   ░███████     ░███ ░░░      ███████     ░███ ░░░      ░███    ",
    "                    ░███    ░███   ░███░░░      ░███         ███░░███     ░███          ░███ ███",
    "                    ███████████    ░░██████     █████       ░░████████    █████         ░░█████ ",
    "                   ░░░░░░░░░░░      ░░░░░░     ░░░░░         ░░░░░░░░    ░░░░░           ░░░░░  ",
    "                                                                                                ",
    "",
    "  Navigation between Window                   Resizing Window                              Moving Window",
    "Alt-h      Go to Left Window             Alt-Shift-h       Move to Left             Alt-Ctrl-h       Move to Left",
    "Alt-j      Go to Down Window             Alt-Shift-j       Move to Down             Alt-Ctrl-j       Move to Down",
    "Alt-k      Go to Up Window               Alt-Shift-k       Move to Up               Alt-Ctrl-k       Move to Up",
    "Alt-l      Go to Right Window            Alt-Shift-l       Move to Right            Alt-Ctrl-l       Move to Right",
    };

    
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")

  math.randomseed(os.time())

  local function pick_color()
      local colors = {"String", "Identifier", "Keyword", "Number"}
      return colors[math.random(#colors)]
  end

  local function footer()
      local total_plugins = #vim.tbl_keys(packer_plugins)
      local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
      local version = vim.version()
      local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

      return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
  end

  dashboard.section.header.val = custom_header;
  dashboard.section.header.opts.hl = "Keyword"; --pick_color()

  -- https://en.wikipedia.org/wiki/Emoji
  dashboard.section.buttons.val = {
      dashboard.button("Spc f n", "🧾  New File",         "<leader>fn" ),
      dashboard.button("Spc f e", "🧮  File Explorer",    "<leader>fe"),
      dashboard.button("Spc f f", "🔍  Find File",        "<leader>ff"),
      dashboard.button("Spc f r", "🧭  Open Recent File", "<leader>fr"),
      dashboard.button("Spc f s", "💬  Find Word",        "<leader>fs"),
      dashboard.button("Spc p s", "📡  Update plugins",   "<leader>ps"),
      dashboard.button("q", "🏝️  Quit", ":qa<cr>")
  }


  dashboard.section.footer.val = footer()
  dashboard.section.footer.opts.hl = "Constant"

  alpha.setup(dashboard.opts)

  vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
