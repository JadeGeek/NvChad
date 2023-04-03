local present, neodev = pcall(require, "neodev")

if not present then
    return
end

neodev.setup()

local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup(neodev)
