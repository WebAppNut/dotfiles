  #######################################################
  ##  filename: bash_aliases.sh                        ##
  ##  path:     ~/src/config/dotfiles/bash/            ##
  ##  symlink:  ~/.bash_aliases                        ##
  ##  purpose:  bash command aliases                   ##
  ##  date:     11/13/2015                             ##
  ##  repo:     https://github.com/WebAppNut/dotfiles  ##
  #######################################################

alias ..='cd ..'                            # cd up 1 level
alias ..2='cd ../..'                        # cd up 2 levels
alias ..3='cd ../../..'                     # cd up 3 levels
alias ..4='cd ../../../..'                  # cd up 4 levels
alias al='alias_list'                       # show all loaded aliases; [term]
alias fp000='chmod a-rwx'                   # strip all file perms
alias fp644='chmod go+r,u+rw'               # set file perms to 644
alias fp755='chmod go+rx,u+rwx'             # set file perms to 755
alias fpax='chmod a+x'                      # make executable
alias bk='backup.sh'                        # invoke backup script
alias bak='backup'                          # backup(); [dir/file]
alias c='clear'                             # clear screen
alias cp='cp -iv'                           # copy; confirm; verbose
alias cpwd="pwd | tr -d '\n' |pbcopy"       # copy working directory path
alias ci="fc -ln -1 | tr -d '\n' |pbcopy"   # copy last command
# alias cop="!! | pbcopy" 	                    # copy output of last command
alias co='fc -ln -1 | awk '\''{$1=$1}1'\'' | pbcopy'
alias dns-f='dscacheutil -flushcache'       # flush dns cache
alias emv='set -o vi; echo "vi mode"'       # set edit mode to vi
alias eme='set -o emacs; echo "emacs mode"' # set edit mode to emacs (default)
alias f='open -a finder $PWD'               # open $PWD in osx finder; [folder]
alias fs='find . -name'                     # filename search [folder/file]
alias func='declare -F'                     # see list of active functions
alias funcf='declare -f'                    # see active functions
alias g='git'                               # run git binary
alias gk='gitk --all'                       # run git repo browser
alias h='history'                           # list command history
alias hr='history_remove'                   # remove line(s) from command history
alias hs='history_search'                   # search command history [term]
alias ip='curl ip.appspot.com'              # list public facing ip address
alias l.='ls -dAF .[^.]*'                   # ls only dotfiles
alias l='ls -fF'                            # list all; no sort; link=/, dir=@
alias ld='ls -dA */'                        # ls only dirs
alias ll='ls_octal -f'                      # ls -l + octal perms (dir contents)
alias lld='ls_octal -d'                     # ls -l + octal perms (dir itself)
alias lt='ls -Altr'                         # sort by date (latest @bottom)
alias lz='ls -AlShr'                        # sort by size (largest @bottom)
alias ln='ln -v'                            # link creation with verbose switch
alias m0='make_empty_file'                  # mkfile [number] [size]
alias mv='mv -iv'                           # move; confirm; verbose
alias ns='notes_search'                     # search for term in note file
alias np='notes_print'                      # copy [note].txt content to pages
alias path='echo -e ${PATH//:/\\n}'         # list all executable paths
alias ping='ping -c3'                       # limit ping to 3 attempts
alias R='. $HOME/.bashrc'                   # source .bashrc to grab changes
alias rm='rm -iv'                           # remove; confirm; verbose
alias s='scratch'                           # create temporary note; hud in ps1
alias ver='sw_vers'                         # check osx version
alias tag='cd ~/src && ctags -R -f .tags'   # generate ctag file
alias tagx='atom ~/src/config/dotfiles/ctags'
alias w1='tmux_workspace.sh'                # attach to session; create if none
alias w1d='tmux detach'                     # detach tmux session
alias w1k='killall tmux'                    # kill tmux session
alias which='which -a'                      # find instances of executable [app]
alias wk='work.sh'                          # invoke bettersnaptool snap script
alias avl='ansible-vault edit $p_vl'        # decrypt & edit vault_local.yml
alias avs='ansible-vault edit $p_vs'        # decrypt & edit vault_server.yml
alias ave='ansible-vault encrypt'           # add file encryption [path/file]
alias avd='ansible-vault decrypt'           # remove file encryption [path/file]
alias apl='$c_ap -l local -K $c_ap2 -vvv'   # run playbook host-limited: local
alias apd='$c_ap -l dev $c_ap2 -vvv'        # run playbook host-limited: dev
alias aps='$c_ap -l stage $c_ap2 -vvv'      # run playbook host-limited: stage
alias app='$c_ap -l prod $c_ap2 -vvv'       # run playbook host-limited: prod
alias aplm='$apd -t mod'                    # run dev play with tag: mod
alias aplr='$apd -t reset'                  # run dev play with tag: reset
alias aal='ansible -i $p_inv local -a'      # run adhoc command: local [command]
alias aad='ansible -i $p_inv dev -a'        # run adhoc command: dev [command]
alias aas='ansible -i $p_inv stage -a'      # run adhoc command: stage [command]
alias aap='ansible -i $p_inv prod -a'       # run adhoc command: prod [command]
alias aaP='ansible -i $p_inv all -m ping'   # run adhoc ping: all
# silence & push to bg; ssh to vm
alias vuwaf='gwaf && vagrant rsync-back > /dev/null && vagrant rsync-auto > /dev/null & ssh waf && fg'
# rsync host to guest
alias synca='vagrant rsync-auto > /dev/null && fg'
alias syncb='vagrant rsync-back'            # one-shot rsync from guest to host
alias vst='vagrant status'                  # run from vagrant project directory
alias vup='vagrant up'                      # "
alias vpro='vagrant provision'              # "
alias vhal='vagrant halt'                   # "
alias vrel='vagrant reload'                 # "
alias vssh='vagrant ssh'                    # "
alias vkil='vagrant destroy'                # "
alias vsus='vagrant suspend'                # "
alias vres='vagrant resume'                 # "