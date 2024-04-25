return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    -- Open terminal in a horizontal split window in the current buffer folder
    vim.keymap.set('n', 'tv', ':split | lcd %:p:h | terminal <CR> | i', { desc = 'open terminal in split window' })
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

    require('neo-tree').setup {}
  end,
}
