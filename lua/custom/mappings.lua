---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fs"] = { "<cmd> Telescope session-lens search_session <CR>", "Find sessions" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
