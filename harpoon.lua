return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    vim.keymap.set("n", "<leader>aa", function() harpoon:list():add() end, { desc = "Harpoon Add" })
    vim.keymap.set(
      "n",
      "<leader>ae",
      function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Harpoon List" }
    )

    vim.keymap.set("n", "<leader>ap", function() harpoon:list():prev() end, { desc = "Harpoon Prev" })
    vim.keymap.set("n", "<leader>an", function() harpoon:list():next() end, { desc = "Harpoon Next" })
  end,
}
