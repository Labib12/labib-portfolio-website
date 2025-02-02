# Labib's Website Infrastructure

This website utilizes opentofu to manage any cloud resources that this project needs

## Local Setup

When doing development work, it's useful to run `tofu` locally.

### Install and configure OpenTofu

Follow the directions on the OpenTofu documentation [here](https://opentofu.org/docs/intro/install/).

Authenticate with Azure
```bash
az login
```

Navigate to the `__pipelines/terraform` folder in your CLI.

Initialize OpenTofu
```bash
tofu init
```

### Planning and applying changes locally
Format and validate the configuration files
```bash
tofu fmt
tofu validate
```

Preview changes, and save the execution plan to a file
```bash
tofu plan -out planfile
```

Apply changes that were planned in the previous step
```bash
tofu apply planfile
```