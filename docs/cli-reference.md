# CLI Reference

To convert a local folder to an **Okteto Desk**, execute:

```console
okteto desk up
```

From this moment, you will have a remote bash terminal running in kubernetes, and your local changes will be automatically synched to your remote container.

To create a new remote bash terminal, execute:

```console
okteto exec bash
```

from the same folder where you executed `okteto desk up`.

In order to destroy your **Okteto Desk**, execute:

```console
okteto desk down
```

from the same folder where you executed `okteto desk up`.

Remember to destroy your **Okteto Desk** before creating a new one in a different local folder.

## Advanced Configuration

Define your **Okteto Desk** using an optional `desk.yml` file. A `desk.yml` file looks like this:

```yaml
image: okteto/desk:0.1.1
workdir: /okteto
```

The `desk.yml` file is optional, above are the default values.

Check our [Dockerfile](Dockerfile) to see the dev tools available in `okteto/desk:0.1.1`.
