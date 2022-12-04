local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.var/app/io.neovim.nvim/data/plugged')

Plug 'tpope/vim-sensible'

--[LanguageServer]
--  Plug ('autozimu/LanguageClient-neovim', { branch = 'next', ['do'] = 'bash install.sh' })
    Plug 'neovim/nvim-lspconfig'
--[/LanguageServer]
--[Git]
    Plug 'tpope/vim-fugitive'
--[/Git]

--[IDE]
    Plug 'simrat39/symbols-outline.nvim'
    Plug 'scrooloose/nerdtree'
    Plug 'mileszs/ack.vim'
    Plug ('Shougo/deoplete.nvim', {  ['do'] = ':UpdateRemotePlugins' })
--[/IDE]


--[Misc]
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
--[/Misc]

vim.call('plug#end')
