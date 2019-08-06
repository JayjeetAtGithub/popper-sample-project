workflow "foo" {
  resolves = "bb"
}

action "aa" {
  uses = "actions/bin/curl@master"
  args = ["github.com"]
}

action "bb" {
  needs = "aa"
  uses = "actions/bin/curl@master"
  args = ["google.com"]
}
