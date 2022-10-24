{ 
  description = "A haskell project managed with nix and cabal";

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };

    in {
      devShell.x86_64-linux = pkgs.mkShell {
        # Add non-Haskell dependencies here, like native libraries and tools
        buildInputs = with pkgs; [
          cabal-install
          ghc
          ghcid
          haskellPackages.hasktags
          hlint
        ];

        shellHook = ''
          # A prompt that will feel familiar to nix-shell users
          export PS1="\n\[\033[1;32m\][nix develop:\w]\$\[\033[0m\] "

          alias ghcid='ghcid --command="cabal repl src/app/Main.hs"'
        '';
      };
    };
}
