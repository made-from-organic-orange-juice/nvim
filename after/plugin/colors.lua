-- setup must be called before loading the colorscheme
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme gruvbox")


vim.t.is_transparent = 0
local function toggle_transparent()
    if vim.t.is_transparent == 0 then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.t.is_transparent = 1
    else
        vim.opt.background = "dark"
        vim.t.is_transparent = 0
    end
end
vim.keymap.set("n", "<leader>tt", toggle_transparent, {})


-- set transparent mode prob not used or nessecary...
