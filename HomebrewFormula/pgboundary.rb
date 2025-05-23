# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgboundary < Formula
  desc "A wrapper around boundary and pgbouncer CLI for integration into IDE/database tooling"
  homepage "https://github.com/sigterm-de/pgboundary"
  version "0.5.1"

  depends_on "boundary"
  depends_on "pgbouncer"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sigterm-de/pgboundary/releases/download/v0.5.1/pgboundary_Darwin_x86_64.zip"
      sha256 "9ae797f2ed7ad5c90ccbcfe0e46ac0547d10efd43492a26b4dbd6777f9700f4c"

      def install
        # Install the binary into Homebrew's bin directory
        bin.install "pgboundary"

        # Install example configuration files into a documentation directory
        doc.install "pgboundary.ini"
        doc.install "pg_auth"
        doc.install "pg_config.ini"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sigterm-de/pgboundary/releases/download/v0.5.1/pgboundary_Darwin_arm64.zip"
      sha256 "ed3cf71f2c21aadcb8ebde54a5ce15dfa0612f5ee0acb19550667827d5c0f6df"

      def install
        # Install the binary into Homebrew's bin directory
        bin.install "pgboundary"

        # Install example configuration files into a documentation directory
        doc.install "pgboundary.ini"
        doc.install "pg_auth"
        doc.install "pg_config.ini"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sigterm-de/pgboundary/releases/download/v0.5.1/pgboundary_Linux_x86_64.zip"
        sha256 "1aa8398b0548189ac568aed739dc39f2f2e087950cdef2f82e9abcf88eebcd27"

        def install
          # Install the binary into Homebrew's bin directory
          bin.install "pgboundary"

          # Install example configuration files into a documentation directory
          doc.install "pgboundary.ini"
          doc.install "pg_auth"
          doc.install "pg_config.ini"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sigterm-de/pgboundary/releases/download/v0.5.1/pgboundary_Linux_arm64.zip"
        sha256 "184087d441bc4176b40779307b572a6e9cad6d714767ed821d268539ce8e05d5"

        def install
          # Install the binary into Homebrew's bin directory
          bin.install "pgboundary"

          # Install example configuration files into a documentation directory
          doc.install "pgboundary.ini"
          doc.install "pg_auth"
          doc.install "pg_config.ini"
        end
      end
    end
  end

  def caveats
    <<~EOS
      The example configuration file has been installed at:
        #{doc}/pgboundary.ini
        #{doc}/pg_config.ini
        #{doc}/pg_auth
      You may copy and modify it for your use:
        cp #{doc}/pgboundary.ini ~/pgboundary/pgboundary.ini
        cp #{doc}/pg_config.ini ~/pgboundary/pg_config.ini
        cp #{doc}/pg_auth ~/pgboundary/pg_auth
    EOS
  end
end
