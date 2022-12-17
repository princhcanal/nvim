source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim

" STATUS LINE
source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/themes/lualine.vim

" THEME
" source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/themes/oceanic-next.vim
" source $HOME/.config/nvim/themes/palenight.vim
" source $HOME/.config/nvim/themes/sonokai.vim
source $HOME/.config/nvim/themes/material.vim

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/rainbow.vim
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/treesitter.lua

lua <<EOF
require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
EOF

source $HOME/.config/nvim/keys/mappings.vim
