{pkgs}:
pkgs.mkShell {
  name = "java-env";
  buildInputs = with pkgs; [
    jdk21
    maven
    gradle
  ];
  shellHook = ''
    echo "☕ Java environment loaded"
  '';
}
