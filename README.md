# Skyramp Dev Container feature:


## Example devcontainer.json
```
{
	"name": "Skyramp Dev",
	"image": "mcr.microsoft.com/devcontainers/base:ubuntu",
	"features": {
		"ghcr.io/devcontainers/features/docker-in-docker:2": {},
		"ghcr.io/letsramp/devcontainer-features/skyramp:1": {}
	}
}

```

