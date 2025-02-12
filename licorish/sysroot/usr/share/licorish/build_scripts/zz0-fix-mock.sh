#!/usr/bin/env bash

set -euox pipefail

tee /usr/bin/podman <<EOF
#!/usr/bin/env bash

host-spawn -pty podman $@
EOF

chmod +x /usr/bin/podman
