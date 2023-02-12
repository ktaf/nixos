{ config, pkgs, ... }:

{
  home = {
    packages = with pkgs; [
      mpc-cli
      # youtube-music
      netease-cloud-music-gtk

    ];
  };
  programs = {
    ncmpcpp = {
      enable = true;
      mpdMusicDir = null;
    };
  };
  home.file = {
    ".config/ncmpcpp/config".text = ''
      mpd_music_dir = ~/Music
    '';
  };

  services = {
    mpd = {
      enable = true;
      musicDirectory = "~/Music";
      extraConfig = ''
        audio_output {
                type            "pulse"
                name            "My Pulseaudio"
        }
      '';
    };
  };
}
