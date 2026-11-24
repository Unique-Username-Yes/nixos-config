local servers = {
  "bashls",
  "lua_ls",
  "pyright",
  -- dev shell servers
  "nixd"
}

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.lsp.config("lua_ls", {
      settings = { Lua = { diagnostics = { globals = { "vim" } } } },
    })

    for _, name in ipairs(servers) do
      local cmd = vim.lsp.config[name] and vim.lsp.config[name].cmd
      if type(cmd) == "table" and vim.fn.executable(cmd[1]) == 1 then
        vim.lsp.enable(name)
      end
    end
  end,
}
