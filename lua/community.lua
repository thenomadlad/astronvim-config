-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },

  -- documentation
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- config/data files
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },

  -- web dev
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },

  -- misc
  { import = "astrocommunity.pack.quarto" },

  -- syntax
  { import = "astrocommunity.syntax.hlargs-nvim" },
  { import = "astrocommunity.syntax.vim-easy-align" },

  -- test
  { import = "astrocommunity.test.neotest" },

  -- editor enhancements
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.workflow.bad-practices-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
}
