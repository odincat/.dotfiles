return {
    {
        "zbirenbaum/copilot.lua",
    },
    {
        "EdenEast/nightfox.nvim",
    },
    {
        "bluz71/vim-moonfly-colors"
    },
    {
        "navarasu/onedark.nvim",
        opts = function(_, config)
            config.style = 'darker'
        end,
    },
    { "ThePrimeagen/harpoon" },
    {
        "ggandor/leap.nvim",
        opts = function(_, config)
            require('leap').add_default_mappings()
        end,
        lazy = false,
    },
    {
        "abecodes/tabout.nvim",
        opts = function()
            require('tabout').setup {
                tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
                backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
                act_as_tab = true, -- shift content if tab out is not possible
                act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
                default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
                default_shift_tab = '<C-d>', -- reverse shift default action,
                enable_backwards = true, -- well ...
                completion = true, -- if the tabkey is used in a completion pum
                tabouts = {
                  {open = "'", close = "'"},
                  {open = '"', close = '"'},
                  {open = '`', close = '`'},
                  {open = '(', close = ')'},
                  {open = '[', close = ']'},
                  {open = '{', close = '}'}
                },
                ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
                exclude = {} -- tabout will ignore these filetypes
            }
        end,

    },
    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
}
