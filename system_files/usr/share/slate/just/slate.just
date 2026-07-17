[group("Install")]
install-default-flatpaks:
    #!/usr/bin/env bash
    set -euo pipefail

    echo "Installing default flatpaks..."
    xargs -a <(curl --retry 3 -sL https://raw.githubusercontent.com/Calvicii/Slate/main/repo_files/flatpaks) flatpak --system -y install
    echo "Default flatpaks installation complete."