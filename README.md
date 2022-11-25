# basic-cabal-nix


## Synopsis

Basic Haskell project template using nix flakes and cabal


## Description

Some basic tools are included in the nix develop shell

- cabal
- ghc (whatever version nixpkgs is at by default, which is not great I know)
- ghcid
- hasktags
- hlint


## Getting source

Source code is available from github at the [basic-cabal-nix](https://github.com/dino-/basic-cabal-nix) project page.

To use this make sure you have nix installed on your system and, at the moment,
you may need to enable the experimental features that flakes rely on to avoid
warnings. In either `$HOME/.config/nix/nix.conf` or, if you have nix installed
multi-user, `/etc/nix/nix.conf`

    extra-experimental-features = flakes nix-command

Start the nix develop shell from the project's top-level directory:

    $ nix develop
    [nix develop] $ cabal build
    ...

And then work as usual.


## Contact

Dino Morelli <dino@ui3.info>
