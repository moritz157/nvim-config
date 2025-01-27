local harpoon = require "harpoon"

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Add to harpoon list" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Show harpoon list" })

vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end, { desc = "Harpoon 1" })
vim.keymap.set("n", "<C-z>", function()
  harpoon:list():select(2)
end, { desc = "Harpoon 2" })
vim.keymap.set("n", "<C-n>", function()
  harpoon:list():select(3)
end, { desc = "Harpoon 3" })
vim.keymap.set("n", "<C-s>", function()
  harpoon:list():select(4)
end, { desc = "Harpoon 4" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end, { desc = "Previous harpoon buffer" })
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end, { desc = "Next harpoon buffer" })
