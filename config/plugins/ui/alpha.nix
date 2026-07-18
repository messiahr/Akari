{
  plugins.alpha = {
    enable = true;
    settings = {
      layout =
        let
          padding = val: {
            type = "padding";
            inherit val;
          };
        in
        [
          (padding 4)
          {
            opts = {
              hl = "AlphaHeader";
              position = "center";
            };
            type = "text";
            # https://emojicombos.com/chiikawa
            val = [
              "⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⠀⣴⡟⠁⠀⠙⢷⣄⠀⠀⠀⠀⠀⣀⣤⠶⢤⣄⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⢸⠏⠀⠀⠀⠀⠈⠛⠛⠻⠶⡴⠟⠉⠀⠀⠀⠹⣧⠀⠀⠀"
              "⠀⠀⠀⢀⣤⠖⠃⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡀⠀⠀"
              "⠀⢀⣼⠟⠙⠳⠶⣦⣤⣤⣤⠶⠞⠋⠛⢷⣄⣀⠀⠀⠀⠀⠀⠀⣹⠁⠀⠀"
              "⢠⡿⠁⠀⠀⠀⠀⠀⠀⠓⠀⠀⠀⠀⠀⠀⣈⡙⠻⠶⠶⣤⣤⡴⠿⣷⡄⠀"
              "⣿⠁⠀⠀⠀⠀⠀⢀⣤⣤⡄⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄"
              "⣿⠀⠠⣢⢉⡁⠢⢿⣿⣾⡟⠀⠀⠀⠀⢰⣿⣍⣷⠀⠀⠀⠀⠀⠀⠀⢹⣧"
              "⣿⡀⠠⡋⠛⠽⣧⠀⠉⠉⠀⣀⢠⡄⢀⠈⠛⠿⡫⣠⣩⣑⣄⠀⠀⠀⢸⡿"
              "⠸⣷⡀⠈⠉⠉⠀⠀⠀⠀⠀⠈⣿⣿⠏⠀⠀⠀⠃⡉⠉⣙⠝⣀⠀⢀⣿⠇"
              "⠀⣘⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠨⡥⠀⠀⠀⠀⠀⠀⠀⢀⡾⠛⣷⣼⠏⠀"
              "⠘⢿⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⣴⡿⠃⠀⠀"
              "⠀⠀⠀⠁⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡆⠀⠀⠀⠀"
              "⠀⠀⠀⠀⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣥⡶⢶⣄⠀"
              "⠀⠀⠀⠀⠀⢻⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣇⣀⣠⡾⠋⠀"
              "⠀⠀⠀⠀⠀⢾⣇⣀⣴⢦⣤⣀⣀⣀⣀⡀⠀⣠⣤⠾⠛⠁⠉⠉⠁⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠉⠉⠉⠉⢿⣄⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀"
              "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            ];
          }
          (padding 6)
          {
            type = "button";
            val = "  Find File";
            opts = {
              keymap = [
                "n"
                "f"
                "<cmd>lua Snacks.picker.smart()<cr>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "f";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          (padding 1)
          {
            type = "button";
            val = "  New File";
            on_press.__raw = "function() vim.cmd[[ene]] end";
            opts = {
              keymap = [
                "n"
                "n"
                ":ene <BAR> startinsert <CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "n";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          (padding 1)
          {
            type = "button";
            val = "󰈚  Recent Files";
            # on_press.raw = "require('telescope.builtin').oldfiles";
            opts = {
              keymap = [
                "n"
                "r"
                "<cmd>lua Snacks.picker.recent()<cr>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "r";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          (padding 1)
          {
            type = "button";
            val = "󰈭  Find Word";
            on_press.raw = "require('telescope.builtin').live_grep";
            opts = {
              keymap = [
                "n"
                "g"
                ":Telescope live_grep <CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "g";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          (padding 1)
          {
            type = "button";
            val = "  Restore Session";
            on_press.raw = "require('persistence').load()";
            opts = {
              keymap = [
                "n"
                "s"
                ":lua require('persistence').load()<cr>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "s";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
          (padding 1)
          {
            type = "button";
            val = "  Quit Neovim";
            on_press.__raw = "function() vim.cmd[[qa]] end";
            opts = {
              keymap = [
                "n"
                "q"
                ":qa<CR>"
                {
                  noremap = true;
                  silent = true;
                  nowait = true;
                }
              ];
              shortcut = "q";

              position = "center";
              cursor = 3;
              width = 40;
              align_shortcut = "right";
              hl_shortcut = "Keyword";
            };
          }
        ];
    };
  };
}
