# Dotfiles and other useful Linux stuff

Non-private basic dotfile configs: 

- .bashrc
- .bashrc_aliases
- .vimrc
- Useful commands and cheat sheets

### Howto:

curl raw data, pipe into file | e.g. `curl rawurl > .vimrc`

Maybe like a quick setup on a linux box would look something like:

```
curl https://raw.githubusercontent.com/rfaile313/dotfiles/master/.bashrc_aliases > ~/.bashrc_aliases && curl https://raw.githubusercontent.com/rfaile313/dotfiles/master/.bashrc  > ~/.bashrc && curl https://raw.githubusercontent.com/rfaile313/dotfiles/master/.vimrc-gnu-linux > ~/.vimrc && echo "Done."
```
