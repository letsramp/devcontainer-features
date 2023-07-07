# Skyramp Dev Container feature:


## Example devcontainer.json
```
{
    "name": "Skyramp Test Tools",
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers/features/docker-in-docker:2": {},
        "ghcr.io/pellepedro/devcontainer-features/skyramp:1": {},
        "ghcr.io/mpriscella/features/kind:1": {}
        "ghcr.io/devcontainers/features/go:1": {
            "version": "1.19"
        },
        "ghcr.io/devcontainers/features/python:1": {},
    },
}
```
