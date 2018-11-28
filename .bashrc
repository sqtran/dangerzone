# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Live git-life on the edge by always rewriting history !!!! Lolz
git () {

for var in "$@"
do
  if [ "$var" == "push" ]; then
    /usr/bin/git "$@" -f
    return
  fi
done
/usr/bin/git "$@"
}
