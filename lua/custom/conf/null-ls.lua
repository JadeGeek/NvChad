local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
   b.formatting.prettier.with({
     filetypes = { "html", "json", "yaml", "markdown" },
   }),
   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
   -- cpp
   b.formatting.clang_format,
   -- cmake
   b.formatting.cmake_format,

    -- json
   b.formatting.jq,

   -- go
   b.formatting.gofumpt,
   b.formatting.goimports,
}

null_ls.setup {
   debug = true,
   sources = sources,
   -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
   -- on_attach = function(client, bufnr)
   --      if client.supports_method("textDocument/formatting") then
   --          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
   --          vim.api.nvim_create_autocmd("BufWritePre", {
   --              group = augroup,
   --              buffer = bufnr,
   --              callback = function()
   --                  -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
   --                  vim.lsp.buf.formatting_sync()
   --              end,
   --          })
   --      end
   --  end,
}
