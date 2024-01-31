{
  plugins.which-key.registrations = {
    "K" = [ "<cmd>Lspsaga hover_doc<cr>" "Code Hover" ];
    "F" = [ "<cmd>lua vim.lsp.buf.format({ async = true }) <cr>" "Format the current buffer" ];
  };

  plugins.lsp = {
    enable = true;
    onAttach = builtins.readFile ./lua/lsp-onAttach.lua;
    servers = {
      rnix-lsp.enable = true;
      rnix-lsp.autostart = true;

      pyright.enable = true;
      pyright.autostart = true;

      tsserver.enable = true;
      tsserver.autostart = true;

      emmet_ls.enable = true;
      emmet_ls.autostart = true;

      tailwindcss.enable = true;
      tailwindcss.autostart = true;
    };
  };

  plugins.nvim-cmp.enable = true;
  plugins.nvim-cmp.mapping =
    {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = {
        action = "cmp.mapping.select_prev_item()";
        modes = [
          "i"
          "s"
        ];
      };
      "<Tab>" = {
        action = "cmp.mapping.select_next_item()";
        modes = [
          "i"
          "s"
        ];
      };
    };

  plugins.nvim-cmp.sources = [
    { name = "nvim_lsp"; }
    { name = "nvim_lsp_signature_help"; }
    { name = "nvim_lsp_document_symbol"; }
    { name = "luasnip"; } #For luasnip users.
    { name = "path"; }
    { name = "buffer"; }
    { name = "cmdline"; }
    { name = "spell"; }
    { name = "dictionary"; }
    { name = "fish"; }
    { name = "tmux"; }
    { name = "treesitter"; }
  ];

  plugins.luasnip.enable = true;
  plugins.nvim-cmp.snippet.expand = "luasnip";

  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-nvim-lsp-document-symbol.enable = true;
  plugins.cmp-nvim-lsp-signature-help.enable = true;
  plugins.cmp_luasnip.enable = true;
  plugins.cmp-path.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-spell.enable = true;
  plugins.cmp-dictionary.enable = true;
  plugins.cmp-fish.enable = true;
  plugins.cmp-tmux.enable = true;
  plugins.cmp-treesitter.enable = true;


  plugins.lsp-format.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.wtf.enable = true;
  plugins.lspkind.enable = true;
  plugins.lspkind.cmp.enable = true;
  plugins.lspsaga = {
    enable = true;
    lightbulb.sign = false;
    lightbulb.virtualText = true;
    lightbulb.debounce = 40;
    ui.codeAction = "⛭";
  };
}
