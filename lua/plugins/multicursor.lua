return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_custom_mappings = {
      ['Find Under'] = 'd',
      ['Find Subword Under'] = 'd',
    }
  end
}
