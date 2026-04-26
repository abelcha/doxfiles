-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
-- 


-- ---------- VS CODE-LIKE EDITING KEYS ----------
local map = vim.keymap.set

-- ↔️ Arrow keys → already work by default

-- — INSERT MODE: Alt/Option navigation like VS Code
map("i", "<M-Left>", "<C-o>b", {silent=true})   -- Alt + ← → previous word
map("i", "<M-Right>", "<C-o>w", {silent=true})  -- Alt + → → next word

-- — INSERT MODE: Alt/Option + delete/backspace
map("i", "<M-BS>", "<C-w>", {silent=true})      -- Alt + Backspace → delete prev word
map("i", "<M-Del>", "<C-o>dw", {silent=true})   -- Alt + Delete → delete next word

-- — CMD/⌘ + arrow in insert (line jump like VS Code)
map("i", "<D-Left>", "<C-o>^", {silent=true})   -- ⌘ + ← → line start
map("i", "<D-Right>", "<C-o>$", {silent=true})  -- ⌘ + → → line end

-- — CMD/⌘ + line delete (like ⌘+Backspace in VS Code)
map("i", "<D-BS>", "<C-u>", {silent=true})

-- — NORMAL mode Cmd/⌘ navigation
map("n", "<D-Left>", "^", {silent=true})
map("n", "<D-Right>", "$", {silent=true})

-- — SHIFT + arrows for selection (insert → visual)
map("i", "<S-Left>", "<Esc>v", {silent=true})
map("i", "<S-Right>", "<Esc>v", {silent=true})
map("i", "<S-Up>", "<Esc>v", {silent=true})
map("i", "<S-Down>", "<Esc>v", {silent=true})

-- optional usability
vim.opt.backspace = "indent,eol,start"
vim.opt.whichwrap = "b,s,h,l,<,>,[,]"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"






vim.keymap.set("n", "<Space>", "i", { silent = true })
vim.keymap.set("n", "<Del>", "i<Del>", { silent = true })
vim.keymap.set("n", "<CR>", "o<Esc>^Da", { silent = true })
vim.keymap.set("n", "<BS>", "i<BS>", { silent = true })
vim.keymap.set("n", "<Space>", "i", { silent = true})


-- -----------------------------
-- HELIX-LIKE LINE OPERATIONS
-- -----------------------------

-- x → select current line
vim.keymap.set("n", "x", "V", { silent = true })

-- d → delete current line (and stay sane)
vim.keymap.set("n", "d", "dd", { silent = true })

-- visual mode: d deletes selection (already default, but explicit)
vim.keymap.set("v", "d", "d", { silent = true })


-- VS CODE / HELIX STYLE COMMAND KEYS (AstroVim)
-- =========================================================

local map = vim.keymap.set

-- ⌘⇧; → format buffer
map("n", "<D-S-;>", function()
  vim.lsp.buf.format({ async = true })
end, { silent = true })

map("v", "<D-S-;>", function()
  vim.lsp.buf.format({ async = true })
end, { silent = true })


-- FIX: nvim-treesitter indent error on Neovim 0.11
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/2273
lvim.builtin.treesitter.indent = {
  enable = false,
}

-- Fix indent-blankline calling broken treesitter indent
lvim.builtin.indentlines = {
  enable = true,
  options = {
    use_treesitter = false,
  },
}

-- Also disable treesitter indent globally
vim.g.indent_blankline_use_treesitter = false


