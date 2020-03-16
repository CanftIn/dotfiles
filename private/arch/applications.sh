# Applications
# https://wiki.archlinux.org/index.php/List_of_applications
# https://github.com/acgtyrant/dotfiles/blob/master/applications.sh

# Game
yay -S --noconfirm --needed steam

# Internet

  ## Network Managers
  yay -S --noconfirm --needed networkmanager network-manager-applet
  # https://wiki.archlinux.org/index.php/GNOME/Keyring TODO
  yay -S --noconfirm --needed gnome-keyring libgnome-keyring seahorse
  systemctl enable networkmanager
  systemctl start networkmanager
  ## Web browsers
  yay -S --noconfirm --needed google-chrome chromium-pepper-flash firefox opera
  ## Downloaders
    ### BitTorrent clients
    yay -S --noconfirm --needed deluge
    ### eDonkey clients
    yay -S --noconfirm --needed amule
    ### Video downloaders
    yay -S --noconfirm --needed you-get
  ## Communication
    ### Email clients
    yay -S --noconfirm --needed thunderbird
    ### Instant messaging
      #### IRC clients
      yay -S --noconfirm --needed hexchat
    ### News, RSS, and blogs
      #### Blog software
      yay -S --noconfirm --needed nodejs-hexo #TODO
      #### Microblogging clients TODO
  #yay -S --noconfirm --needed rainbowstream
  ## Pastebin TODO
  yay -S --noconfirm --needed wgetpaste

# Multimedia TODO

  ## Image
    ### Image viewers
    yay -S --noconfirm --needed feh jpeginfo pinta
  ## Graphics and image manipulation
    ### Raster editors TODO
  ## Screen capture TODO
    yay -S --noconfirm --needed deepin-screenshot
  ## Audio
    ### Audio players TODO
    yay -S --noconfirm --needed deadbeef
  ## Video
    ### Video players TODO
    yay -S --noconfirm --needed mpv gnome-mpv vlc mediainfo
    ### Subtitles TODO
    yay -S --noconfirm --needed aegisub

# Utilities

  ## Partitioning tools
  yay -S --noconfirm --needed gparted
  ## Mount tools
  ## Terminal emulators
    yay -S --noconfirm --needed termite
  ## Files
    ### File managers
    # https://wiki.archlinux.org/index.php/File_manager_functionality#Thumbnail_previews
    yay -S --noconfirm --needed ranger highlight atool poppler transmission-cli
    yay -S --noconfirm --needed nautilus gvfs-smb gvfs-mtp \
        thumbler poppler-glib ffmepgthumbnailer freetype2 libgsf raw-thumbnailer totem
  ## Desktop search engines
  yay -S --noconfirm --needed catfish
  ## Archiving and compression tools
  yay -S --noconfirm --needed bzip2 gzip p7zip tar unrar unzip xz zip ### Graphical TODO
  ## Comparison, diff, merge
  yay -S --noconfirm --needed meld
  ## Disk cleaning TODO
  yay -S --noconfirm --needed bleachbit
  ## Disk usage display
  yay -S --noconfirm --needed baobab
  ## Clock synchronization TODO
  ## System monitoring
  yay -S --noconfirm --needed conky gnome-system-monitor htop
  ## System information viewers
  yay -S --noconfirm --needed alsi cpu-g-bzr hardinfo lsb-release
  ## Power management see general.sh
  ## Clipboard managers TODO
  yay -S --noconfirm --needed xclip
  ## Wallpaper setters TODO
  yay -S --noconfirm --needed feh
  ## Package management see general.sh
  ## Input method editor
  yay -S --noconfirm --needed fcitx-im fcitx-rime fcitx-im fcitx-configtool fcitx-qt5
  ## File synchronization
  yay -S --noconfirm --needed rsync

# Documents

  ## Office suites
  yay -S --noconfirm --needed wps-office
  ## Document markup languages
  yay -S --noconfirm --needed markdown pandoc python-sphinx
  ## Scientific documents
  yay -S --noconfirm --needed texmate
  ## Translation and localization TODO
  ## Text editors
  yay -S --noconfirm --needed gvim gedit emacs
  yay -S --noconfirm --needed neovim python-neovim
  yay -S --noconfirm --needed typora
  ## Readers and Viewers
    ### PDF and DjVu
    yay -S --noconfirm --needed llpp
    ### Pager
    yay -S --noconfirm --needed nvimpager-git
    ### CHM
    ### Comic book
    yay -S --noconfirm --needed mcomix
    ### Scanning software TODO
    ### OCR software TODO
  ## Mind-mapping tools
  yay -S --noconfirm --needed xmind
  ## Character Selector TODO
  ## Bibliographic reference managers TODO

# Security

  ## Firewalls see gneneral.sh
  ## Network security TODO
  ## Threat and vulnerability detection TODO
  ## File security TODO
  ## Anti malware TODO
  ## Backup programs see general.sh
  ## Screen lockers TODO
  yay -S --noconfirm --needed xautolock i3lock
  ## Hash checkers
  yay -S --noconfirm --needed gtkhash gtkhash-nautilus
  ## Encryption, signing, steganography TODO
  ## Password managers TODO

# Science

  ## Mathematics
    ### Calculator
    yay -S --noconfirm --needed gnome-calculator
    ### Scientific or technical computing TODO

# Other

  ## Work environment
    ### Bootsplash TODO
    ### Command shells see general.sh
    ### Terminal multiplexers see general.sh
    ### Window managers see general.sh
  ## Application launchers TODO
  yay -S --noconfirm --needed dmenu synapse
  ## Emulators TODO

################################################################################

## Proxy TODO
yay -S --noconfirm --needed shadowsocks cow-proxy

## Cloud backup TODO
yay -S --noconfirm --needed nutstore nautilus-nutstore

## Remote desktop
yay -S --noconfirm --needed teamviewer

## Safe plugins
yay -S --noconfirm --needed upeditor aliedit

## Others
yay -S --noconfirm --needed cmatrix weatherboy whois create_ap openssh \
    linux-headers rescuetime autojump tree gnome-control-center

# Development

  ## VCS
  yay -S --noconfirm --needed git gitg tig hub
  mkdir ~/.ssh
  ssh-keygen -t rsa -b 4096 -C "acgtyrant@gmail.com"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
  echo "add your key to git server!"
  ## python
  yay -S --noconfirm --needed python
  yay -S --noconfirm --needed flake8
  yay -S --noconfirm --needed ipython jupyter jupyter-notebook mathjax
  yay -S --noconfirm --needed python-pip python2-pip
  # http://blog.csdn.net/gaoyingju/article/details/50449522#0-tsina-1-61768-397232819ff9a47a7b7e80a40613cfe1
  pip install pep8-naming flake8-import-order flake8-todo flake8-quotes 
  ## rust
  yay -S --noconfirm --needed rust
  ## C/C++
  yay -S --noconfirm --needed gdb cmake clang valgrind ctags cpplint
  yay -S --noconfirm --needed opencv boost boost-libs
  yay -S --noconfirm --needed gperftools
  ## system profiler
  yay -S --noconfirm --needed strace lsof perf
  ## nodjes
  yay -S --noconfirm --needed nodejs npm
  ## Machine Learning
  yay -S --noconfirm --needed boost google-glog hdf5 leveldb lmdb protobuf \
      snappy gflags
  ### Caffe
  yay -S --needed atlas-lapack
  yay -S --noconfirm --needed cuda boost protobuf google-glog gflags hdf5 \
      lmdb leveldb cudnn
  yay -S --noconfirm --needed cython python-numpy python-scipy \
      python-matplotlib python-scikit-image python-h5py python-plyvel \
      python-networkx python-nose python-pandas python-dateutil python-gflags \
      python-yaml python-six python-pillow python-protobuf
  ### SciPy
  yay -S --noconfirm --needed python-numpy python-scipy python-matplotlib \
      ipython jupyter jupyter-nootbook python-pandas python-syumpy python-nose
  ## Others
  yay -S --noconfirm --needed cloc ack fdupes the_silver_searcher \
      search-and-view-git stow nyancat \
      enca dos2unix unix2dox renameutils \
      powerline python-powerline