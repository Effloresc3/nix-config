{
  config,
  pkgs,
  ...
}: {
  # --- IMPORTS ---
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/packages.nix
    ./modules/shell.nix
    ./modules/theme.nix
    ./modules/1password.nix
  ];
  # --- BOOTLOADER ---
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 2;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot";
  boot.extraModulePackages = [config.boot.kernelPackages.rtl8814au];

  # --- NETWORKING ---
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # --- HARDWARE & NVIDIA ---
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  hardware.enableAllFirmware = true;
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # --- LOCALE & TIME ---
  time.timeZone = "America/Argentina/Buenos_Aires";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_AR.UTF-8";
    LC_IDENTIFICATION = "es_AR.UTF-8";
    LC_MEASUREMENT = "es_AR.UTF-8";
    LC_MONETARY = "es_AR.UTF-8";
    LC_NAME = "es_AR.UTF-8";
    LC_NUMERIC = "es_AR.UTF-8";
    LC_PAPER = "es_AR.UTF-8";
    LC_TELEPHONE = "es_AR.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # --- NIX SETTINGS ---
  nix.settings.experimental-features = ["nix-command" "flakes"];
  # --- SERVICES (X11 & DESKTOP) ---
  services.xserver.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Unified SDDM & Plasma Configuration
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "monochrome-violet";

    extraPackages = with pkgs; [
      kdePackages.qtsvg
      kdePackages.qtmultimedia
      kdePackages.qtvirtualkeyboard
    ];
  };
  services.desktopManager.plasma6.enable = true;

  services.printing.enable = true;

  # --- SOUND ---
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # --- USER CONFIGURATION ---
  users.users.seren = {
    isNormalUser = true;
    description = "seren";
    extraGroups = ["networkmanager" "wheel" "docker"];
    shell = pkgs.zsh;
  };
  users.defaultUserShell = pkgs.zsh;
  virtualisation.docker.enable = true;

  # --- SYSTEM PACKAGES ---
  nixpkgs.config.allowUnfree = true;

  environment.pathsToLink = ["/share/icons"];

  # --- SYSTEM STATE ---
  system.stateVersion = "25.11";
}
