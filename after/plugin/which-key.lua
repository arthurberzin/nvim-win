--- https://github.com/folke/which-key.nvim
vim.o.timeout = true;

vim.o.timeoutlen = 300;

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local wk = require("which-key")

wk.setup {
    plugins = {
      marks = true, -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 20, -- how many suggestions should be shown in the list?
      },
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      presets = {
        operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        motions = true, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others prefixed with z
        g = true, -- bindings for prefixed with g
      },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    operators = { gc = "Comments" },
    key_labels = {
      -- override the label used to display some keys. It doesn't effect WK in any other way.
      -- For example:
      -- ["<space>"] = "SPC",
      -- ["<cr>"] = "RET",
      -- ["<tab>"] = "TAB",
    },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "", -- symbol prepended to a group
    },
    popup_mappings = {
      scroll_down = '<c-d>', -- binding to scroll down inside the popup
      scroll_up = '<c-u>', -- binding to scroll up inside the popup
    },
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
      margin = { 1, 3, 2, 5 }, -- extra window margin [top, right, bottom, left]
      padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
      winblend = 0
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 5, -- spacing between columns
      align = "center", -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    show_keys = true, -- show the currently pressed key and its label as a message in the command line
    triggers = "auto", -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
      -- list of mode / prefixes that should never be hooked by WhichKey
      -- this is mostly relevant for key maps that start with a native binding
      -- most people should not need to change this
      i = { "j", "k" },
      v = { "j", "k" },
    },
    -- disable the WhichKey popup for certain buf types and file types.
    -- Disabled by deafult for Telescope
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }


wk.register({
    ["<leader>"] = {
      a = {"<cmd>Alpha<cr>", "Starting Page"},
      c = {
        name = "Common Functions",
        h = {
          name = "Health Check",
          a = { "<cmd>checkhealth<cr>", "Complete Health"},
          t = { "<cmd>checkhealth nvim-treesitter<cr>", "TreeSitter Health"},
          e = { "<cmd>checkhealth telescope<cr>", "Telescope Health"},
          n = { "<cmd>checkhealth null-ls<cr>", "Null-LS Health"},
          m = { "<cmd>checkhealth mason<cr>", "Mason Health"},
        },
        i = {
          name = "Help",
          l = { "<cmd>help lspconfig-all<cr>", "LSP config"},
          m = { "<cmd>help mason<cr>", "Mason"},
          s = { "<cmd>help mason-lspconfig-requirements<cr>", "Mason LSP Setup"},
          t = { "<cmd>help vim-treesitter<cr>", "Treesitter"},
          a = { "<cmd>help<cr>", "Nvim Help"},
        },
       },
      f = {
        name = "File",
        n = { "<cmd>enew<cr>", "New File" },
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        s = { "<cmd>Telescope live_grep<cr>", "Find Word" },
        g = { "<cmd>Telescope git_files<cr>", "Git Files" },
        e = { "<cmd>Ex<cr>" , "File Explorer" }, -- In Explorer mode "d" create a directory, "%" create a file
      },
      w = {
        name = "Window",
        v = {"<cmd>vertical split<cr>", "Vertical Split"},
        h = {"<cmd>split<cr>", "Horisontal split"},
        a = {"<cmd>qa!<cr>", "Close All Windows"},
        c = {"<cmd>q<cr>", "Close Wondow"},
        s = {"<cmd>wq<cr>", "Save & Close"},

        t = {"<cmd>tabnew<cr>", "New Tab"},
        q = {"<cmd>tabclose<cr>", "Close Tab"},
        n = {"<cmd>tabnext<cr>", "Next Tab"},
        p = {"<cmd>tabprevious<cr>", "Previous Tab"},
      },
      n = {
        name = "Navigation",
        c = {"<cmd>edit C:\\<cr>", "Go to C:\\ "},
        d = {"<cmd>edit D:\\<cr>", "Go to D:\\ "},
        e = {"<cmd>edit E:\\<cr>", "Go to E:\\ "},
        f = {"<cmd>edit F:\\<cr>", "Go to F:\\ "},
      },
      p = {
        name = "Packer",
        u = {"<cmd>:PackerUpdate<cr>", "Update plugins"},
        s = {"<cmd>PackerSync<cr>", "Sync plugins"},
      },
      u = {"<cmd>UndotreeToggle<cr>", "Undotree"},
      t = {
        name = "Floaterm",
        g = {"<cmd>FloatermNew lazygit<cr>", "Lazygit"},
        d = {"<cmd>FloatermNew lazygit<cr>", "Lazydocker"},
        o = {"<cmd>FloatermNew ncdu<cr>", "Node"},
        y = {"<cmd>FloatermNew python<cr>", "Python"},
        t = {"<cmd>FloatermToggle<cr>", "Toggle Terminal"},
        n = {"<cmd>FloatermNext<cr>", "Next Terminal"},
        p = {"<cmd>FloatermPrev<cr>", "Prev Terminal"},
        a = {"<cmd>FloatermNew<cr>", "New Terminal"},
        c = {"<cmd>FloatermKill<cr>", "Close Current Terminal"},
      },
      h = {
        name = "Harpoon",
        a = { mark.add_file, "Add File"},
        h = { ui.toggle_quick_menu, "Files List"},
        n = { ui.nav_next, "Next File"},
        p = { ui.nav_prev, "Prev File"},
      },
      ["1"] = { function() ui.nav_file(1) end, "Harpoon Select #1"},
      ["2"] = { function() ui.nav_file(2) end, "Harpoon Select #2"},
      ["3"] = { function() ui.nav_file(3) end, "Harpoon Select #3"},
      ["4"] = { function() ui.nav_file(4) end, "Harpoon Select #4"},
      v = {
        name = "View Actions",
        r = { vim.lsp.buf.rename, "Rename Var" },
        d = { vim.lsp.buf.definition , "Go to Definition"},
        f = { vim.lsp.buf.references , "Go to References"},
        a = { vim.lsp.buf.code_action , "Code Action"},
        w = { vim.lsp.buf.workspace_symbol , "workspace Symbol"}, -- ????
        i = { vim.lsp.buf.hover , "Item Info"},
        h = { vim.lsp.buf.signature_help , "Signature Help"}, -- ???
        o = { vim.diagnostic.open_float , "Open Float"}, -- ?????
        b = { vim.diagnostic.goto_next , "Move to Next LSP Issue"},
        c = { vim.diagnostic.goto_prev , "Move to Prev LSP Issue"},
      },
      ["<Tab>"] = { "<cmd>Neotree toggle<cr>" , "Neo Tree"},
      m ={
        name = "Mason",
        m = { "<cmd>Mason<cr>", "Open Mason" },
        l = { "<cmd>MasonLog<cr>", "Mason Logs" },
        h = { "<cmd>checkhealth mason<cr>", "Health Check"}
      },
      l = {
        name = "LSP & TreeSitter",
        t = { "<cmd>TSUpdateSync<cr>", "TreeSitter Update All"},
        f = { "<cmd>LspInfo<cr>", "LSP Info"},
        s = { "<cmd>LspStart<cr>", "LSP Start"},
        p = { "<cmd>LspStop<cr>", "LSP Stop"},
        r = { "<cmd>LspRestart<cr>", "LSP Restart"},
        i = { "<cmd>LspInstall<cr>", "LSP Install"},
      },
    },
  })
