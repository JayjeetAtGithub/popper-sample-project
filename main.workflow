workflow "foo" {
  resolves = "b"
}

action "a" {
  uses = "docker://debian:buster-slim"
  args = ["ls -la"]
}

action "b" {
  needs = "a"
  uses = "actions/bin/sh@master"
  args = ["ls -la"]
}
