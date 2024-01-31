{
  plugins.lsp = {
    enable = true;
    servers = {
      rnix-lsp.enable = true;
      rnix-lsp.autostart = true;
    };
  };
  plugins.lsp-format.enable = true;
}
