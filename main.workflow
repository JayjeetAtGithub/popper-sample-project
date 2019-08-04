workflow "foo" {
  resolves = "bb"
}

action "aa" {
  uses = "docker://ubuntu:latest"
  args = ["ls"]
}

action "bb" {
  needs = "aa"
  uses = "docker://ubuntu:latest"
  args = ["ls"]
}
