return {
    opt = {
        -- set to true or false etc.
        relativenumber = true, -- sets vim.opt.relativenumber
        spell = false, -- sets vim.opt.spell
        wrap = false, -- sets vim.opt.wrap
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        hlsearch = false,
        incsearch = true,
        smartindent = true,
        undofile = true,
        undodir = os.getenv("HOME") .. "/.cache/nvim/undo",
        termguicolors = true,
        swapfile = false,
        backup = false,
        clipboard = ""
    },
    g = {
        mapleader = " ", -- sets vim.g.mapleader
        autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
        cmp_enabled = true, -- enable completion at start
        autopairs_enabled = true, -- enable autopairs at start
        diagnostics_enabled = true, -- enable diagnostics at start
        status_diagnostics_enabled = true, -- enable diagnostics in statusline
        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
        ui_notifications_enabled = false, -- disable notifications when toggling UI elements
        copilot_no_tab_map = true,
        neovide_touch_drag_timeout = 0.0,
        neovide_no_idle = true,
        neovide_scroll_animation_length = 0.0,
        neovide_cursor_animation_length = 0.0,
        neovide_cursor_trail_size = 0

    },
    o = {
        shell = "/usr/bin/zsh",
        guifont = "monoki:h8"
    }
}