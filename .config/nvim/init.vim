set tabstop=4 shiftwidth=4 expandtab " replace tabs with spaces

set splitbelow splitright " split more naturally

set nowrap! " don't wrap lines

set mouse=a
set number

set undofile

set swapfile

set backup
set writebackup
set backupdir=$HOME/.local/share/nvim/backup

set termguicolors
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-dracula

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

let g:csv_nomap_up=1
let g:csv_nomap_down=1
