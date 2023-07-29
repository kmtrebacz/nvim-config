require('dashboard').setup({
     theme = 'doom',
     config = {
       header = {
          '',
          '',
          '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
          '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
          '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
          '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
          '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
          '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
          '',
          '',
          ' [ IF YOU USE NEOVIM, YOU LOOK LIKE A PRO, BUT YOUR CODE STILL SUCKS ] ',
          '',
          '',
       },
       center = {
         {
           desc_hl = 'String',
           desc = 'Find File',
           key = 'a',
           keymap = 'CTRL f',
           action = 'Telescope find_files'
         },
         {
           desc_hl = 'String',
           desc = 'File Browser',
           key = 's',
           keymap = 'CTRL n',
           action = 'NvimTreeFindFileToggle'
         },
         {
          desc_hl = 'String',
          desc = 'File Word',
          key = 'd',
          keymap = 'CTRL g',
          action = 'Telescope live_grep'
         },
       },
       footer = {
          '',
          'by kmtrebacz',
          '',
       }
     }
   })