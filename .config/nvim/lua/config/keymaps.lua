-- keymaps are automatically loaded on the verylazy event
-- default keymaps that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here
local map = vim.keymap.set

map("i", "jj", "<esc>")

-- helix like
map({ "n", "v" }, "gl", "$", { desc = "End of line" })
map({ "n", "v" }, "gh", "0", { desc = "Start of line" })
map({ "n", "v" }, "gs", "^", { desc = "Non-whitespace char of line" })
map({ "n", "v" }, "ge", "G", { desc = "Last line" })

-- map({ "n", "v" }, "d", "x")
-- map("n", "x", "V")
-- map("n", "X", "Vk")
-- map("v", "x", "j")
-- map("v", "X", "k")
-- map("n", "U", "<C-r>")
map("v", ";", "<esc>")
-- map("n", "w", "vaw")
-- map("v", "w", "w<esc>vaw")
-- -- map("n", "W", "vaW")
-- -- map("v", "W", "W<esc>vaW")
-- map("n", "W", "w")
-- map("v", "W", "w")
-- map("n", "b", "vgel")
-- map("v", "b", "ge<esc>vgel")
-- -- map("n", "B", "vBh")
-- -- map("v", "B", "ge<esc>vBh")
-- map("n", "B", "b")
-- map("v", "B", "b")
--
-- map({ "n", "v" }, "%", "gg0vG$")
--
-- map("n", "C", "<C-v>j")
-- map("v", "C", "j", { desc = "extend cursor" })
-- map("v", ",", "<Esc>")

map("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })

map("n", "<C-c>", "gcc", { remap = true })
map("v", "<C-c>", "gc", { remap = true })
