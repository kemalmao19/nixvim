{
  config = {
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      clipboard.register = "unnamedplus";

      updatetime = 100; #faster compiletion
      smartindent = true;
    };
  };
  imports = [ ./comment.nix ];
}
