#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
cat > /etc/yum.repos.d/copr-solopasha-hyprland.repo << EOL
[copr:copr.fedorainfracloud.org:solopasha:hyprland]
name=Copr repo for hyprland owned by solopasha
baseurl=https://download.copr.fedorainfracloud.org/results/solopasha/hyprland/fedora-38-x86_64/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/solopasha/hyprland/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOL
