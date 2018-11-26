## v2

- Clear misc directories *before* the repo in cleanup, that way it will still succeed if the
  free space requirement isn't met.
- Fix images with a slash in their name (on appstream-compose in particular).
- Create a system called oci-init for running commands upon entering the Flatpak.
- Create an oci-init script to symlink /usr/opt to /opt if needed.

## v1

Initial release.
