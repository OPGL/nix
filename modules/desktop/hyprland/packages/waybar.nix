_: {
  homeManager.programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        height = 36;
        spacing = 0;

        margin-top = 10;
        margin-left = 20;
        margin-right = 20;

        modules-left = ["clock"];
        modules-center = ["hyprland/workspaces"];
        modules-right = ["tray" "wireplumber" "memory" "cpu" "temperature"];

        tray = {
          icon-size = 20;
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
          format = "{}% ";
        };

        temperature = {
          hwmon-path = "/sys/class/hwmon/hwmon3/temp1_input";
          critical-threshold = 80;
          format = "{temperatureC}°C";
        };

        wireplumber = {
          format = "{volume}% {icon}";
          format-muted = " Muted";
          format-icons = {
            default = ["" "" ""];
          };
          on-click = "pavucontrol";
          on-click-right = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          on-scroll-up = "wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 1%+";
          on-scroll-down = "wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 1%-";
          smooth-scrolling-threshold = 0.5;
          scroll-step = 1;
        };

        "hyprland/workspaces" = {
          persistent-workspaces = {
            "*" = 10;
          };
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
            urgent = "";
          };
        };
      }
    ];

    style =
      /*
      css
      */
      ''
        * {
          font-family: "Hurmit Nerd Font";
          font-size: 13px;
        }

        window#waybar {
          background-color: rgba(40, 42, 54, 0.85);
          border-radius: 30px;
          color: #D8DEE9;
        }

        .modules-left {
          padding-left: 10px;
        }

        .modules-center {
          margin-left: 0px;
          padding: 5px;
        }

        .modules-right {
          padding-right: 20px;
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
          padding: 0 8px;
          background-color: transparent;
          color: #8E8E8E;
          font-size: 16px;
          transition: color 0.3s ease;
        }

        #workspaces button.focused {
          color: #FF6961;
          text-shadow: 0 0 5px rgba(255,105,97,0.3);
        }

        #workspaces button.urgent {
          color: #FF6B6B;
        }

        #clock,
        #wireplumber,
        #memory,
        #cpu,
        #temperature,
        #tray {
          padding: 10px;
          margin: 0;
          font-size: 110%;
          color: #ffffff;
        }

        #clock {
          color: #FF6961;
          font-weight: 500;
        }

        #wireplumber {
          color: #9ACD9A;
        }

        #memory {
          color: #E6B0AA;
        }

        #cpu {
          color: #D4A5A5;
        }

        #temperature {
          color: #FF6B6B;
        }

        #tray {
          color: #B0BEC5;
        }

        button:hover {
          color: #FFFFFF;
          box-shadow: inset 0 -3px #FF9999;
        }
      '';
  };
}
