# flatpod

Convert podman containers to Flatpak runtimes! This was built for development purposes, in order
to be able to use the large container ecosystem for Flatpak development, as I'm on Silverblue;
the runtimes aren't really intended for publishing (you can try if you want though).

## Requirements

- [Gjs](https://gitlab.gnome.org/GNOME/gjs/wikis/Home) (already installed if you use GNOME or
  some GNOME apps like Documents and Polari).
- [OSTree](https://ostree.readthedocs.io) (already installed on systems with Flatpak).
- [Flatpak](https://flatpak.org/) (considering this tool creates Flatpaks, I don't know why you
  would use it without Flatpak installed).

TL;DR: **All these requirements are already satisfied on any system with GNOME and Flatpak**.
In particular, it runs out-of-the-box without any layered packages on Fedora Silverblue.

## Usage

Just run `flatpod container-name`, and the container will autmatically be converted to a Flatpak.
By default, the container name will undergo conversion for the resulting runtime, e.g.:

* `alpine:latest` -> `io.docker.alpine//master`
* `registry.fedoraproject.org/fedora-minimal:29` -> `org.fedoraproject.registry.fedora-minimal//29`
* `gcr.io/flutter-cirrus/build-website-image:latest` -> `io.gcr.flutter-cirrus.build-website-image//master`

You can change the Flatpak ID with `flatpod -i my.runtime.id` and the branch via
`flatpod -b my-branch`.
