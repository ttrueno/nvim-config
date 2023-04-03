# ***INSTALLATION***
1. Just git clone it to: 
Linux: ~/.config/nvim 
Windows C:/Users/<you>/AppData\Local\nvim,

2. search for packer.lua(/lua/goto/packer.lua) and open packer.lua
3. type `:so` command and do `:PackerSync`
4. Run `:GoInstallBinaries` and `:GoUpdateBinaries`, if there an error, then try `Update` and then `Install`.

     (I had problems with Go, that's why i'm tellin' you to do that, 
     otherwise you'll get some kind of errors like: `no views in session`)

# ***KEYBINDINGS***
#### most likely that i forgot something @.@ 

### [!] I set `<leader>` to space, cause I was building this config using Primeagen's video: "0 to LSP : Neovim RC From Scratch".
https://www.youtube.com/watch?v=w7i4amO_zaE

###### Tabs(NORMAL MODE)

* Close tab - `<leader>..`
* Next tab - `<leader>/`
* Prev tab - `<leader>,`

#### Telescope(NORMAL MODE) - for searching files

* Project files - `<leader>pf`

#### Undotree(NORMAL MODE) - for tracking changes in current buffer.

* Toggle undotree - `<leader>u`

#### Terminal(NORMAL MODE) - well, I think you know what is terminal.

* Toggle terminal - `<leader>t`

#### NvimTree(NORMAL MODE) - file explorer

* Toggle nerd tree - `<leader><Tab>`(just press space and then tab)

###### defaults:

* Create file - just press `a` while you are in file explorer

* Create folder - just add slash or backslash to a name of the file, while creating it, depends on your system. 

#### Trouble(NORMAL MODE) - adds a window to track compilation errors 

* Toggle trouble - `<leader>xx`
* Diagnose document - `<leader>xd`
* Diagnose workspace - `<leader>xw`

#### OTHERS: 

* Half page up and center window relative to cursor - `Ctrl+k`
* Half page down and center window relative to cursor - `Ctrl+j`
* Concatinates next line to the current lines tale - `J`

# Adding plugins 
1. To add a plugin, go to lua/goto/packer.lua and install your plugin for packer.
2. Save, then type `:so` command and `:PackerSync`, then complete installation. 

* If you need to configure go to step 3, otherwise you don't need to do any actions, your plugin have been installed

3. Go to the root of nvim config. Go to `after/plugin/`
4. Create `<yourpluginconfig>.lua`
5. Configure your plugin, save and `:so`

# Supporting programming languages

1. Firstly add desired language to threesitter.
2. Just go to treesitter's config file in `after/plugin/treesitter.lua` and there will be a list with languages
3. Add desired language, save file and do a little `:so`
4. So, now we need to install language server. For me, the easiest way it's just to create a file with corresponding file extension to the programming language.
5. Open file, then lsp will ask you to install or not install language server, choose the one you want(Google each first.) and install.
6. It's all probably, but you also may install something like `vim-go`, just some plugins for making workflow more convenient.
