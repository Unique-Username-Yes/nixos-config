local flake = vim.fn.expand("~/nixos-config")   -- your flake path
local hostname = vim.fn.hostname()
local user = vim.env.USER

vim.lsp.config("nixd", {
  settings = {
    nixd = {
      nixpkgs = {
        expr = string.format(
          'import (builtins.getFlake "%s").inputs.nixpkgs { }', flake),
      },
      formatting = {
        command = { "nixfmt" },
      },
      options = {
        nixos = {
          expr = string.format(
            '(builtins.getFlake "%s").nixosConfigurations.%s.options',
            flake, hostname),
        },
        home_manager = {
          expr = string.format(
            '(builtins.getFlake "%s").homeConfigurations."%s@%s".options',
            flake, user, hostname),
        },
      },
    },
  },
})

