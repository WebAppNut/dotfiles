
##########################################################
##  filename: colors.sh                                 ##
##  path:     ~/src/config/bin/                         ##
##  purpose:  assign color values; display color chart  ##
##  date:     05/11/2016                                ##
##  repo:     https://github.com/WebAppNut/provision    ##
##  source:    $ . ~/src/config/provision/osx.sh        ##
##########################################################

# assign color values
rs=$(tput sgr0)                       # text: reset attributes
blue=$(tput setaf 33)                 # text: blue
gray=$(tput setaf 250)                # text: gray
green=$(tput setaf 64)                # text: green
greenb=$(tput bold)$(tput setaf 64)   # text: green & bold
red=$(tput setaf 160)                 # text: red
redb=$(tput bold)$(tput setaf 160)    # text: red & bold
yellow=$(tput setaf 136)              # text: yellow
yellowb=$(tput bold)$(tput setaf 136) # text: yellow & bold
white=$(tput setaf 7)                 # text: white

show_colors() {
  # display foreground & background colors
  for fgbg in 38 48 ; do
    # list colors
    for color in {0..256}; do
      # display the color values
      printf "\e[${fgbg};5;%sm %3s \e[0m" "${color}" "${color}"
      # display 10 colors per line
      if [ $((($color + 1) % 17)) == 0 ] ; then
        # pad new line
        echo
      fi
    done
    echo
  done
}