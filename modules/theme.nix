{pkgs, ...}: let
  src = ../desktop-assets/Monochrome-Violet;
  yamis-src = ../desktop-assets/YAMIS;

  monochrome-violet-pkg = pkgs.runCommand "monochrome-violet-package" {} ''

    # SDDM

    mkdir -p $out/share/sddm/themes/monochrome-violet

    cp -r ${src}/sddm-theme/* $out/share/sddm/themes/monochrome-violet


    # Plasma Look-and-Feel

    mkdir -p $out/share/plasma/look-and-feel/Monochrome-Violet

    cp -r ${src}/look-and-feel/* $out/share/plasma/look-and-feel/Monochrome-Violet


    # Desktop Theme

    mkdir -p $out/share/plasma/desktoptheme/Monochrome-Violet

    cp -r ${src}/desktoptheme/* $out/share/plasma/desktoptheme/Monochrome-Violet


    # Icons (YAMIS)

    mkdir -p $out/share/icons/YAMIS

    cp -r ${yamis-src}/* $out/share/icons/YAMIS/


    # Kvantum, Aurorae, and Wallpapers

    mkdir -p $out/share/Kvantum/NoMansSkyJux

    cp ${src}/kvantum/NoMansSkyJux.* $out/share/Kvantum/NoMansSkyJux/



    mkdir -p $out/share/aurorae/themes/Monochrome-Violet

    cp -r ${src}/aurorae/Monochrome-Violet/* $out/share/aurorae/themes/Monochrome-Violet


    mkdir -p $out/share/wallpapers/Monochrome-Violet

    cp -r ${src}/wallpapers/* $out/share/wallpapers/Monochrome-Violet/

  '';
in {
  environment.systemPackages = [monochrome-violet-pkg];

  environment.etc = {
    "xdg/plasma-org.kde.plasma.desktop-appletsrc".source = "${monochrome-violet-pkg}/etc/xdg/plasma-org.kde.plasma.desktop-appletsrc";

    "xdg/plasmashellrc".source = "${monochrome-violet-pkg}/etc/xdg/plasmashellrc";
  };

  services.displayManager.sddm.theme = "monochrome-violet";
}
