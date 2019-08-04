workflow "foo" {
  resolves = "b"
}

action "a" {
  uses = "docker://ubuntu:latest"
  args = ["ls"]
}

action "b" {
  needs = "a"
  uses = "docker://ubuntu:latest"
  args = ["ls"]
}
