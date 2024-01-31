{ pkgs, ... }:
{
  colorschemes = {
    catppuccin = {
      enable = true;
      flavour = "macchiato";
      terminalColors = true;
    };
  };

  plugins.cursorline.enable = true;

  plugins.nvim-tree = {
    enable = true;
    disableNetrw = true;
    view.side = "left";
    view.width = 25;
    respectBufCwd = true;
    autoReloadOnWrite = true;
    git.enable = true;
    filters.dotfiles = true;
    renderer.highlightGit = true;
    renderer.indentMarkers.enable = true;
  };

  plugins.which-key.registrations = {
    "<c-n>" = [ "<cmd>NvimTreeToggle<CR>" "Open Tree in left side" ];
    "<leader>t" = [
      {
        "ib" = [ "<cmd>IBLToggle<cr>" "Toggle Indent Blankline" ];
        "ih" = [ "<cmd>lua require('lsp-inlayhints').toggle()<cr>" ];
      }
    ];
  };

  plugins.indent-blankline = {
    enable = true;
    indent.char = "┊";
    exclude.buftypes = [ "terminal" "neorg" ];
    exclude.filetypes = [
      "help"
      "terminal"
      "dashboard"
      "lspinfo"
      "TelescopePrompt"
      "TelescopeResults"
    ];
  };

  extraPlugins = with pkgs.vimPlugins; [ edge unicode-vim lsp-inlayhints-nvim ];

  plugins.lualine = {
    enable = true;
    theme = "nightfly";
    componentSeparators = {
      left = "|";
      right = "|";
    };
  };

  extraConfigLua = ''
    vim.opt.list = true
    vim.opt.listchars:append("eol:↴")

    require('lsp-inlayhints').setup({
      renderer = "inlay-hints/render/virtline",
    })
  '';
}
