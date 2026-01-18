{pkgs}:
pkgs.mkShell {
  name = "ts-env";
  buildInputs = with pkgs; [
    lsof
    nodejs_22
    docker-compose
    nodePackages.pnpm
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin:$PATH"
    export NODE_PATH="$PWD/node_modules"
    echo "🟦 NestJS/TS Environment Ready"
    export UID=$(id -u)
    export GID=$(id -g)
    echo "Dev shell active: UID=$UID, GID=$GID"
  '';
}
