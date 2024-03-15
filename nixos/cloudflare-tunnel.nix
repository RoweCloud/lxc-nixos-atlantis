{ inputs
, lib
, config
, pkgs
, ...
}: {
  environment.systemPackages = [
    pkgs.cloudflared
  ];

  users.users.cloudflared = {
    group = "cloudflared";
    isSystemUser = true;
  };

  users.groups.cloudflared = { };

  systemd.services.cloudflared = {
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" "network-online.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.cloudflared}/bin/cloudlared tunnel --config=/etc/cloudflared/cloudflared.yaml --no-autoupdate run";
      Restart = "always";
      User = "cloudflared";
      Group = "cloudflared";
    };
  };
}
