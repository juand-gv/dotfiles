" ----------------------
"     Neovim - VSCode Style
" ----------------------

" === Básico ===
set number              " Números de línea
set relativenumber      " Números relativos (útil para navegar)
set tabstop=4           " Tab = 4 espacios
set shiftwidth=4
set expandtab           " Tabs son espacios
set autoindent
set smartindent
set mouse=a             " Habilitar el mouse
set clipboard=unnamedplus   " Copia/pega directo al portapapeles
set termguicolors       " Colores verdaderos
set background=dark     " Tema oscuro

syntax on
filetype plugin indent on

" === vim-plug ===
call plug#begin('~/.vim/plugged')

" -- Apariencia y barra de estado
Plug 'Mofiqul/vscode.nvim'                   " Tema tipo VSCode
Plug 'nvim-lualine/lualine.nvim'             " Barra de estado moderna
Plug 'nvim-tree/nvim-web-devicons'           " Iconos bonitos para archivos

" -- Barra lateral (explorador de archivos)
Plug 'nvim-tree/nvim-tree.lua'

" -- Buscador de archivos (Ctrl+p style)
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

" -- Resaltado avanzado de sintaxis y folding
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" -- LSP y autocompletado inteligente
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" -- Vista/tagbar para estructura del código
Plug 'liuchengxu/vista.vim'

call plug#end()

" === Configuración de plugins ===

" Tema VSCode
colorscheme vscode

" Barra de estado moderna
lua << EOF
require('lualine').setup{}
EOF

" NvimTree (explorador de archivos tipo VSCode)
nnoremap <C-n> :NvimTreeToggle<CR>
lua << EOF
require'nvim-tree'.setup {}
EOF

" Telescope (fuzzy finder para archivos y búsqueda en proyecto)
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>

" Vista.vim (estructura de archivo/código)
nnoremap <F8> :Vista!!<CR>

" Treesitter (resaltado moderno para todos los lenguajes)
lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  indent = { enable = true }
}
EOF

" LSP y autocompletado básico para Python y Bash
lua << EOF
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.bashls.setup{}
EOF

" Autocompletado nvim-cmp
lua << EOF
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' }
  })
})
EOF

" Opcional: mejora del menú de autocompletado
set completeopt=menu,menuone,noselect

" Opcional: copiar línea rápidamente
nnoremap <C-c> yy

" === Consejos de uso ===
" Ctrl+n       -> Abre/cierra el explorador de archivos (NvimTree)
" Ctrl+p       -> Busca archivos rápido (Telescope)
" Ctrl+f       -> Busca texto en el proyecto (Telescope)
" F8           -> Abre/cierra la estructura/tagbar del código (Vista)
" Ctrl+Space   -> Llama autocompletado (nvim-cmp)
" <Tab>/<S-Tab>-> Navega por las opciones de autocompletado

" === Instalación de plugins ===
" 1. Abre nvim y ejecuta :PlugInstall la primera vez.
" 2. Instala los lenguage servers:
"     sudo npm install -g pyright bash-language-server

" ¡Listo! Tu nvim ahora luce como VSCode, pero vuela.

