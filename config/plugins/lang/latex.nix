{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.vimtex ];

  plugins = {
    which-key.settings.spec = [
      {
        __unkeyed-1 = "<leader>l";
        group = "Vimtex";
      }
      {
        __unkeyed-1 = "\\l";
        group = "Vimtex";
      }
    ];

    treesitter.settings.highlight.disable = [ "latex" ];
  };

  extraConfigVim = ''
    let g:vimtex_compiler_method = 'latexmk'
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_fold_enabled = 1
    let g:vimtex_imaps_enabled = 1
    let g:vimtex_syntax_enabled = 1
  '';
}
