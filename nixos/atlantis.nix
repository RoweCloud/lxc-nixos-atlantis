{ inputs
, lib
, config
, pkgs
, ...
}: {

  environment.systemPackages = [
    pkgs.atlantis
    pkgs.terraform
  ];

  users.users.atlantis = {
    group = "atlantis";
    isSystemUser = true;
  };

  users.groups.atlantis = { };

  systemd.services.atlantis = {
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.atlantis}/bin/atlantis server --config /etc/atlantis/config.yaml";
      Restart = "always";
      User = "atlantis";
      Group = "atlantis";
    };
  };
}
