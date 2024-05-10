vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'github/copilot.vim'
	use 'windwp/nvim-autopairs'
	use 'preservim/nerdtree'
	use 'kyazdani42/nvim-web-devicons'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'ervandew/supertab'
	use 'nordtheme/vim'
	use 'rcarriga/nvim-notify'
	use {
    		'junegunn/fzf',
    		run = function() vim.fn['fzf#install']() end
	}
	use {
    		'neoclide/coc.nvim',
    		branch = 'release'
	}


	use 'junegunn/fzf.vim'
	use 'vim-scripts/c.vim'
	use 'andweeb/presence.nvim'
end)
