# Vimrc settings

### 1. Copy .vimrc in home directory

```
~/.vimrc
```

###  2. Install Vim-plug
Run current command in home directory:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


### 3. Install plugins
Open vim and run command:
```
:PlugInstall
```

### Notes
```
Version vim > 9.0.0
```
```
For MacOS - brew install ack
```
```
/etc/vim/vimrc - path for common vimrc configuration
```

Initially, the background of the theme is more gray. To make it completely black, you can manually make one edit.
```
1. cd ~/.vim/plugged/vim-code-dark/colors

2. vim codedark.vim

3. edit this string:

- let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '234'}
+ let s:cdBack = {'gui': '#1E1E1E', 'cterm': s:cterm00, 'cterm256': '232'}
```
