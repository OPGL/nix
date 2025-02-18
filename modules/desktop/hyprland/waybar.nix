{pkgs, ...}: {
  homeManager.programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        height = 36;
        spacing = 0;

        # Corrected module declarations
        modules-left = ["clock"];
        modules-center = ["hyprland/workspaces"];
        modules-right = ["tray" "pulseaudio" "cpu" "memory" "temperature"];

        # Module configurations
        tray = {
          spacing = 10;
        };

        clock = {
          timezone = "Europe/Warsaw";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = "{:%Y-%m-%d}";
        };

        cpu = {
          format = "{usage}% ";
          tooltip = false;
        };

        memory = {
          format = "{}% ";
        };

        temperature = {
          hwmon-path = "/sys/class/hwmon/hwmon4/temp1_input";
          critical-threshold = 80;
          format = "{temperatureC}°C";
        };

        pulseaudio = {
          format = "{volume}% {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = " {volume}% ";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            default = ["" "" ""];
          };
          on-click = "pavucontrol";
        };

        "hyprland/workspaces" = {
          persistent-workspaces = {
            "*" = 10;
          };
        };
      }
    ];

    style = ''
      * {
          font-family: "FantasqueSansM Nerd Font";
          font-size: 13px;
      }

      window#waybar {
          background-color: rgba(0, 0, 0, 0);
          border-radius: 0px 0px 10px 10px;
      }

      .modules-left {
          background-color: rgba(40,42,54, 0.5);
          border-radius: 15px;
          margin-left: 0px;
          padding: 0px;
      }

      .modules-center {
          background-color: rgba(40,42,54, 0.5);
          border-radius: 15px;
          margin-left: 0px;
          padding: 5px;
      }

      .modules-right {
          background-color: rgba(40,42,54, 0.5);
          border-radius: 15px;
          margin-left: 0px;
          padding: 0px 0px 0px 5px;
      }

      button {
          box-shadow: inset 0 -3px transparent;
          border: none;
          border-radius: 5px;
      }

      button:hover {
          background: inherit;
          box-shadow: inset 0 -3px #ffffff;
      }

      #workspaces button {
          padding: 0 5px;
          background-color: transparent;
          color: #AEC6CF;
      }

      #workspaces button:hover {
          background: rgba(0, 0, 0, 0.2);
      }

      #workspaces button.focused {
          background-color: red;
          box-shadow: inset 0 -3px #ffffff;
      }

      #workspaces button.urgent {
          background-color: #eb4d4b;
      }

      #clock,
      #cpu,
      #memory,
      #temperature,
      #pulseaudio,
      #tray {
          padding: 10px;
          margin: 0;
          color: #ffffff;
      }

      #clock {
          color: #FF6961;
      }

      #pulseaudio {
          color: #AAEAAA;
      }

      #memory {
          color: #FAC898;
      }

      #cpu {
          color: #DFC7A7;
      }

      #temperature {
          color: #FF6961;
      }
    '';
  };
}
