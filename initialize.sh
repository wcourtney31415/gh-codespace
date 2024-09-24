# Setup: Terminal
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Install: Font -- MesloLGS NF Regular.ttf
curl -o /usr/share/fonts/mesloLgsNfRegular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
# Install: Font -- MesloLGS NF Bold.ttf
curl -o /usr/share/fonts/mesloLgsNfBold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
# Install: Font -- MesloLGS NF Italic.ttf
curl -o /usr/share/fonts/mesloLgsNfItalic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
# Install: Font -- MesloLGS NF Bold Italic.ttf
curl -o /usr/share/fonts/mesloLgsNfBoldItalic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

# Install: Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Update: Apt
sudo apt upgrade
sudo apt update

# Install Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/Install/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit
rm lazygit.tar.gz


# Install: Figlet
sudo apt install figlet

# Install: Task
npm install -g @go-task/cli

# Action: Add Powerlevel10k to .zshrc config
echo UsePowerLevel10K >> ~/.zshrc
echo ZSH_THEME=\"powerlevel10k/powerlevel10k\" >> ~/.zshrc

# Print: Completion Message
figlet Setup Complete
