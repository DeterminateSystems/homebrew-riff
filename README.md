# homebrew-riff

To install [Riff] on macOS using [Homebrew]:

```shell
brew install DeterminateSystems/riff/riff
```

> **Note**: This formula does *not* install [Nix] or [Cargo].

## Updating the formula

To update the `riff` formula for new versions of the tool:

1. Update the `version` and `url` fields to reflect the new version.
2. Run `brew install ./Formula/riff.rb`.
3. Update the `sha256` value to match the value from the error output.
4. Run `brew test ./Formula/riff.rb` to verify that the new version is properly
  installable.

[cargo]: https://doc.rust-lang.org/cargo
[homebrew]: https://brew.sh
[nix]: https://nixos.org
[riff]: https://github.com/DeterminateSystems/riff

