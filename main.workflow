workflow "foo" {
  resolves = "b"
}

action "a" {
  uses = "actions/bin/sh@master"
  args = ["ls -la"]
}

action "b" {
  needs = "a"
  uses = "actions/bin/sh@master"
  args = ["ls -la"]
}
