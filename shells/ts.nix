{pkgs}:
pkgs.mkShell {
  name = "ts-env";
  buildInputs = with pkgs; [
    nodejs_22
    nodePackages.pnpm
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin:$PATH"

    export NODE_PATH="$PWD/node_modules"

    echo "🟦 NestJS/TS Environment Ready"
  '';
}
