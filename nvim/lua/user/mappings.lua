return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
        ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
        ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
        ["<C-d>"] = { "<C-d>zz" },
        ["<C-u>"] = { "<C-u>zz" },
        ["<leader>h"] = false,
        ["<leader>y"] = { "\"+y" },
        ["<leader>p"] = { "\"+p" },
        ["<leader>P"] = { "\"+P" },
        -- ["<S-H>"] = { function() astronvim.nav_buf(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
        -- ["<S-L>"] = { function() astronvim.nav_buf(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
        L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
        H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer" },
    },
    v = {
        [">"] = { ">gv" },
        ["<"] = { "<gv" },
        ["J"] = { ":m '>+1<cr>gv=g<gv" },
        ["K"] = { ":m '>-2<cr>gv=g<gv" },
        ["<leader>y"] = { "\"+y" },
        ["<leader>p"] = { "\"+p" },
        ["<leader>P"] = { "\"+P" }
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    },
}