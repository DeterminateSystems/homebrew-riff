# homebrew-riff

To install [Riff] on macOS using [Homebrew]:

```shell
brew install DeterminateSystems/riff/riff
```

> **Note**: This formula does *not* install [Nix] or [Cargo].

## Updating the formula

To update the `riff` formula for new versions of the tool, you have two options:

1. Update manually.
   1. Update the `version` field to reflect the new version.
   1. Run `brew install ./Formula/riff.rb`.
   1. Update the `sha256` value to match the value from the error output.
   1. Run `brew test ./Formula/riff.rb` to verify that the new version is
     properly installable.
1. Update using CI.
   1. Update the `version` field to reflect the new version and commit the
      change.
   1. Submit a pull request to update the version.
   1. The Actions pipeline will fail due to an invalid SHA256 while also
      providing the proper hash in the log output.
   1. Update the `sha256` field in `riff.rb` with the correct hash.
   1. Commit the correct SHA256. The Actions pipeline should now succeed.

[cargo]: https://doc.rust-lang.org/cargo
[homebrew]: https://brew.sh
[nix]: https://nixos.org
[riff]: https://github.com/DeterminateSystems/riff
