#!/usr/bin/env bats

@test "has the data dog agent running" {
  ps aux | grep dd-agent
}
