local maps = {
  -- Quick save and exit
--  {'n', 'qq', ':q!<CR>'},
--  {'n', 'qw', ':wq<CR>'},
--  {'n', 'ww', ':w<CR>'},

  -- Quick movement
  {'n', '<C-h>', '<C-w>h'},
  {'n', '<C-l>', '<C-w>l'},
  {'n', '<C-j>', '<C-w>j'},
  {'n', '<C-k>', '<C-w>k'},
  {'n', '<C-Left>', '<C-w>h'},
  {'n', '<C-Right>', '<C-w>l'},
  {'n', '<C-Down>', '<C-w>j'},
  {'n', '<C-Up>', '<C-w>k'},

  -- Quick tab management
  {'n', '<C-s>h', ':tabp<CR>'},
  {'n', '<C-s>l', ':tabn<CR>'},
  {'n', '<C-s>j', ':tabl<CR>'},
  {'n', '<C-s>k', ':tabr<CR>'},
  {'n', '<C-s><Left>', ':tabp<CR>'},
  {'n', '<C-s><Right>', ':tabn<CR>'},
  {'n', '<C-s><Down>', ':tabl<CR>'},
  {'n', '<C-s><Up>', ':tabr<CR>'},

  -- Terminal
  {'t', '<Esc>', '<C-\\><C-n>'},

  -- NvimTree
  {'n', '<C-c>', ':NvimTreeToggle <CR>'},

  -- Trouble
  {'n', '<leader>tt', ':TroubleToggle document_diagnostics<CR>'},
  {'n', '<leader>TT', ':TroubleToggle workspace_diagnostics<CR>'},

  -- Telescope
  {'n', 'ff', ':Telescope find_files<CR>'},
  {'n', 'fl', ':Telescope live_grep<CR>'},
  {'n', 'fb', ':Telescope buffers<CR>'},
  {'n', 'fg', ':Telescope git_files<CR>'},
  {'n', 'fc', ':Telescope git_bcommits<CR>'},
  {'n', 'fC', ':Telescope git_commits<CR>'},
  {'n', 'fs', ':Telescope git_status<CR>'},
  {'n', 'fS', ':Telescope git_stash<CR>'},
  {'n', 'fm', ':Telescope media_files<CR>'},
  {'n', 'fq', ':Telescope neoclip<CR>'},

  -- Barbar movement
  {'n', '.[', ':BufferPrevious<CR>'},
  {'n', '.]', ':BufferNext<CR>'},
  {'n', '<leader>1', ':BufferGoto 1<CR>'},
  {'n', '<leader>2', ':BufferGoto 2<CR>'},
  {'n', '<leader>3', ':BufferGoto 3<CR>'},
  {'n', '<leader>4', ':BufferGoto 4<CR>'},
  {'n', '<leader>5', ':BufferGoto 5<CR>'},
  {'n', '<leader>6', ':BufferGoto 6<CR>'},
  {'n', '<leader>7', ':BufferGoto 7<CR>'},
  {'n', '<leader>8', ':BufferGoto 8<CR>'},
  {'n', '<leader>9', ':BufferGoto 9<CR>'},
  {'n', '<leader>0', ':BufferLast<CR>'},
  -- close buffer
  {'n', '<leader>c', ':BufferClose<CR>'},
  -- magic pick
  {'n', '<C-p>', ':BufferPick<CR>'},
}


for _, i in pairs(maps) do
  vim.api.nvim_set_keymap(i[1], i[2], i[3], {noremap = true, silent = true})
end
