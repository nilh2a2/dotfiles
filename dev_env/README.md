# Setup

1. **Setup SSH and Keys**
   - Configure SSH access to your remote server
   - Add SSH keys for authentication

2. **Add SSH Alias**
   - Create an alias for easy server access in your SSH config

3. **Install Docker on Remote Server**
   - Install the latest version of Docker on the remote server

4. **Setup Docker Context**
   - Configure Docker context to point to your remote server

5. **Use Makefile**
   - Run development tasks using the provided Makefile

# TODO

to automate them all:

- setup ssh keys in github
- setup api keys in dev env container
- clone working github repo(use an input file)
- lauch tmux and happy-coder, print connect url(happy://xxxx)

# Others

some plugins requre compilers(c and zig) to install, ignored neovim

```
git clone https://github.com/nilh2a2/nvim.git ~/.config/nvim
nvim --headless -c "lua require('lazy').sync({wait=true})" -c "qa"
```
