# This file was generated automatically by podmutt release automation. DO NOT EDIT.
cask "podmutt" do
  version "1.4.0"

  on_macos do
    on_arm do
      sha256 "b9ac2308613f8d78026dfdf6ee7401bd89a7020dfbf64d183a58e44fd628fc36"
      url "https://github.com/susamn/podmutt/releases/download/v#{version}/podmutt_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "0546001e28c67061fa5ad8cb199722540c8525366ce248d1fcf751d8e32479d3"
      url "https://github.com/susamn/podmutt/releases/download/v#{version}/podmutt_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "34c817f08995eed4a9321bfa292133b5abc1407e809ce6e1bcaa5a48e44f73fa"
      url "https://github.com/susamn/podmutt/releases/download/v#{version}/podmutt_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b095b53eb167e8d04d78ee9047dce3f4006f7641c96158fd220f81e638faa41b"
      url "https://github.com/susamn/podmutt/releases/download/v#{version}/podmutt_#{version}_linux_amd64.tar.gz"
    end
  end

  name "podmutt"
  desc "Terminal podcast client inspired by lazygit and mpdtui"
  homepage "https://github.com/susamn/podmutt"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "podmutt"

  caveats <<~EOS
    podmutt streams podcast audio through mpv:

      brew install mpv

    macOS first launch:
      If macOS warns that the developer cannot be verified, allow it with:
        xattr -d com.apple.quarantine $(which podmutt)
      (or click "Open Anyway" in System Settings > Privacy & Security).

    Icons use standard Unicode by default (no patched font required).
    To use Nerd Fonts, set `icons = "nerd"` in config.toml.
  EOS
end
