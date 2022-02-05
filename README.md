# Pinecone's Neovim Setup

My personal [Neovim](https://neovim.io/) config. Current state is a bit messy because I copied most of the @kofteistkofte's nvim nvim_configs.

This setup mostly designed for **TypeScript** but it also has some configuration for **Go** and **Lua** development.

## Features
- Written in [Lua](https://www.lua.org/)
- File management with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Easy to access terminal with [toggleterm.nvim](akinsho/toggleterm.nvim)
- Neovim's own Lsp configured by [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Easy Language Server installation with [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- File searching, greping, and much more with [telescope.nvim](nvim-telescope/telescope.nvim) a.k.a. fuzzy finder on steroids
- Autocopletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Snippets by [luasnip](https://github.com/L3MON4D3/LuaSnip) and [friendly-snippets](https://github.com/L3MON4D3/LuaSnip)
- More sane snippet usage with [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- Easy commenting with [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- Markdown preview 
    - On browser by [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim), might be the only non-lua plugin...
    - On Neovim itself by [glow.nvim](https://github.com/ellisonleao/glow.nvim)
- Easy linting with [trouble.nvim](https://github.com/folke/trouble.nvim)


## Installing
In most scenarios, you just need to move it to your `~/.config/nvim` directory. But there are some dependencies like prettier, eslint and eslint_d.
Make sure these things in path for TypeScript development.

If not already, please install ripgrep.

After installing dependencies you might want to run `:PackerSync` btw
and after that just don't bother with installing glow manually and use `:GlowInstall`

## TODO
- [ ] Maybe switching to the palenight theme. Dracula is okay but meh.
- [ ] Clear the code... a lot... `Maybe in some random future bro.`
- [ ] Find a good git plugin written in Lua. `That's a must btw.`
- [ ] Fix the rough edges that only shows up constant use.
