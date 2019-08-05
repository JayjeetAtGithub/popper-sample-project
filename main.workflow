workflow "foo" {
  resolves = "b"
}

action "a" {
  uses = "actions/bin/curl@master"
  args = ["github.com"]
}

action "b" {
  needs = "a"
  uses = "actions/bin/curl@master"
  args = ["google.com"]
}
