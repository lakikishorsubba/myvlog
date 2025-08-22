# Remove server.pid if it exists (prevents "A server is already running" error)
pid_file = File.expand_path("../tmp/pids/server.pid", __dir__)
File.delete(pid_file) if File.exist?(pid_file)

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
