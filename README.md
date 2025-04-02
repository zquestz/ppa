# zquestz's PPA

A personal package archive hosted on GitHub Pages for distributing custom Ubuntu packages.

## Available Packages

- [plank-reloaded](https://github.com/zquestz/plank-reloaded) - Plank Reloaded is a fork of the original [Plank](https://launchpad.net/plank) project, providing a simple dock for X11 desktop environments. While development began with a focus on Cinnamon, we now actively support multiple desktop environments including MATE and Xfce. Wayland is not supported at this time.

## Installation

Add the repository and install packages:

```bash
# Add the repository
curl -fsSL https://zquestz.github.io/ppa/ubuntu/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/zquestz-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/zquestz-archive-keyring.gpg] https://zquestz.github.io/ppa/ubuntu ./" | sudo tee /etc/apt/sources.list.d/zquestz.list
sudo apt update

# Install a package
sudo apt install plank-reloaded
```

## License

This repository is available under the [MIT License](LICENSE).

## References

This PPA was created using information from:

- [Creating a PPA repository on GitHub Pages](https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html)
- [GPG key management for package repositories](https://makandracards.com/makandra/37763-gpg-extract-private-key-and-import-on-different-machine)
- [Creating a signed APT repository](http://blog.jonliv.es/blog/2011/04/26/creating-your-own-signed-apt-repository-and-debian-packages/)
- [Custom and authenticated APT repositories](https://medium.com/sqooba/create-your-own-custom-and-authenticated-apt-repository-1e4a4cf0b864)
- [VSCode PPA on GitHub](https://github.com/tagplus5/vscode-ppa)
