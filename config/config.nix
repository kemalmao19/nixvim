{
  config = {
    options = {
      number = true;
      relativenumber = true;
      tabstop = 2;
      shiftwidth = 2;
      clipboard.register = "unnamedplus";

      updatetime = 100; #faster compiletion
      smartindent = true;
    };
  };
  imports = [ ./comment.nix ];
}
