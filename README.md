# NixOS-motherland-config
## Disk configuration:
The disk Partition layout is configured with Disko.
It's configuration can be found in [disko.nix](disko.nix).
Disk layout:
| Partition | type          | size | subvolume | extra    | Mountpoint |
|-----------|---------------|------|-----------|----------|------------|
| ESP       | EFI (EF00)    | 1G   |           |          | /boot      |
| LUKS      | btrfs on LUKS | 100% | /home     | zstd     | /home      |
|           |               |      | /root     | zstd     | /          |
|           |               |      | /nix      | zstd     | /nix       |
|           |               |      | /persist  | zstd     | /persist   |
|           |               |      | /log      | zstd     | /var/log   |
|           |               |      | /swap     | size=8G  | /swap      |
