---
title: Configure Dragonfly
description: Learn how to configure Dragonfly caching for Adobe Commerce performance optimization. Discover features, setup steps, and configuration best practices.
feature: Configuration, Cache
---
# Configure Dragonfly

Dragonfly is a modern in-memory datastore that is fully compatible with Redis and Memcached APIs. It offers significant performance improvements through its multi-threaded, shared-nothing architecture while requiring no code changes for existing Redis integrations.

Dragonfly features include:

- Full Redis API compatibility
- PHP session storage
- Tag-based cache cleanup without `foreach` loops
- On-disk saves and master/replica replication
- Multi-threaded architecture for improved performance

## Install Dragonfly

To install and configure the Dragonfly software, consult the following resources:

- [Dragonfly GitHub releases](https://github.com/dragonflydb/dragonfly/releases)
- [Dragonfly quick start](https://www.dragonflydb.io/docs/getting-started)
- [Dragonfly documentation](https://www.dragonflydb.io/docs)

### Docker installation

The quickest way to get started with Dragonfly is using Docker.

**Linux:**

```bash
docker run --network=host --ulimit memlock=-1 docker.dragonflydb.io/dragonflydb/dragonfly
```

**macOS and Windows:**

```bash
docker run -p 6379:6379 --ulimit memlock=-1 docker.dragonflydb.io/dragonflydb/dragonfly
```

### Binary installation

1. Download the appropriate binary from [Dragonfly releases](https://github.com/dragonflydb/dragonfly/releases).

1. Extract and rename the binary:

   ```bash
   tar -xzf dragonfly-*.tar.gz
   mv dragonfly-* dragonfly
   ```

1. Start Dragonfly:

   ```bash
   ./dragonfly --logtostderr
   ```

## Set up Dragonfly configuration

Dragonfly uses command-line flags for configuration. You can also use a configuration file with the `--flagfile` option.

To optimize the Dragonfly instance for your requirements, you get best results by using a dedicated instance for each session, Commerce cache, and FPC.

Adobe recommends enabling persistence for sessions using snapshot-based persistence. Dragonfly supports point-in-time snapshots that store the complete database in a dump file.

- **Snapshot persistence** stores the complete database in a dump file. You can configure automatic snapshots using the `--snapshot_cron` flag or manual snapshots using the `BGSAVE` command.

For the cache instance, set up the instance so that it is large enough to store your entire Commerce cache. Size requirements depend on different factors like the number of products and store views. As a starting point, you can use the size of the cache folder on your file system. For example, if the `var/cache` folder on your file system is 5 GB, set up your Dragonfly instance with at least 5 GB to start. Persistence is not required for the cache instance because the Commerce cache can be restored.

### Common configuration flags

| Flag | Default | Description |
|------|---------|-------------|
| `--port` | `6379` | Server port for client connections |
| `--bind` | (all interfaces) | Bind address |
| `--requirepass` | (empty) | Password for AUTH authentication |
| `--maxmemory` | `0` (automatic) | Maximum memory limit in bytes |
| `--dbnum` | `16` | Number of databases |
| `--dir` | (current) | Working directory for snapshots |
| `--dbfilename` | `dump-{timestamp}` | Snapshot filename |
| `--snapshot_cron` | (disabled) | Cron expression for automatic snapshots |
| `--proactor_threads` | `0` (auto) | Number of I/O threads |
| `--cache_mode` | `false` | Enable cache mode with automatic eviction |

### Example configuration

Create a configuration file `/etc/dragonfly/dragonfly.conf`:

```ini
--port=6379
--bind=127.0.0.1
--requirepass=your_password
--maxmemory=4294967296
--dir=/var/lib/dragonfly
--dbfilename=dump
--snapshot_cron=0 */6 * * *
--cache_mode=true
```

Start Dragonfly with the configuration file:

```bash
dragonfly --flagfile=/etc/dragonfly/dragonfly.conf
```

## Verify Dragonfly connection

To verify that Dragonfly and Commerce are working together properly, log in to the server running Dragonfly, open a terminal, and use the Redis CLI commands. Dragonfly is fully compatible with `redis-cli`.

### Ping command

```bash
redis-cli ping
```

The expected response is: `PONG`

### Monitor command

```bash
redis-cli monitor
```

This displays all commands processed by the server in real-time.

### Connection test with authentication

If you configured a password:

```bash
redis-cli -a your_password ping
```

If the command succeeds, Dragonfly is set up properly.
