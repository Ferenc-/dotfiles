local nnoremap = function(lhs, rhs, silent)
  vim.api.nvim_set_keymap("n", lhs, rhs, { noremap = true, silent = silent })
end

local inoremap = function(lhs, rhs)
  vim.api.nvim_set_keymap("i", lhs, rhs, { noremap = true })
end

local vnoremap = function(lhs, rhs)
  vim.api.nvim_set_keymap("v", lhs, rhs, { noremap = true })
end


nnoremap("d", '"_d')
vnoremap("d", '"_d')
nnoremap("dw", '"_dw')
vnoremap("dw", '"_dw')
nnoremap("dd", '"_dd')
vnoremap("dd", '"_dd')

nnoremap("<C-t>", ":tabnew<CR>")

--Always open file under cursor on a new tab:
nnoremap("gf", "<C-w>gF")
