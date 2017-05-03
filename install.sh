#!/bin/bash
#Script to install brew and install required files.

echo "Installing HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Starting application install"
echo ""
echo "Installing Git"
brew install git
echo ""
echo "Installing Github Desktop"
brew cask install github-desktop
echo ""
echo "Installing NodeJS"
brew install node
echo ""
echo "Installing Google Chrome"
brew cask install google-chrome
echo ""
echo "Installing Firefox"
brew cask install firefox
echo ""
echo "Installing Slack"
brew cask install slack
echo ""
echo "Installing 1Password"
brew cask install 1password
echo ""
echo "Installing Harvest"
brew cask install harvest
echo ""
echo "Installing Charles Proxy"
brew cask install charles
echo ""
echo "Installing Jing"
brew cask install jing
echo ""
echo "Installing Google Drive"
brew cask install google-drive
echo ""
echo "Installing GoTo Meeting"
brew cask install gotomeeting
echo ""
echo "Installing Cyberduck"
brew cask install cyberduck
echo ""
echo "Installing Spectacle"
brew cask install spectacle
echo ""
echo "Installing Clipy"
brew cask install clipy
echo ""
echo "Installing VirtualBox"
brew cask install virtualbox
echo ""
echo "Installing VirtualBox Extension Pack"
brew cask install virtualbox-extension-pack
echo ""
echo "Installing Github Desktop"
brew cask install github-desktop
echo ""
echo "Installing Alfred"
brew cask install alfred
echo ""
echo "Installing Skype"
brew cask install skype
echo ""
echo ""

echo "Which IDE would you like to install?"
select option in "Atom" "Brackets" "Visual Studio" "Netbeans" "Webstorm" "I'll install my own"
do
  case $option in
          Atom)echo "Installing $option" && brew cask install atom && break;;
          Brackets)echo "Installing $option" &&brew cask install brackets  && break;;
          "Visual Studio")echo "Installing $option" && brew cask install visual-studio-code  && break;;
          Netbeans)echo "Installing $option" && brew cask install netbeans && break;;
          Webstorm)echo "Installing $option" && brew cask install webstorm && break;;
          "I'll install my own") break;;
          *) echo "Try again";;
  esac
done
echo "Starting cleanup"
brew cask cleanup
echo "All done! Toast is ready."
