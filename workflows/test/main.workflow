workflow "foo" {
	resolves = "bar"
}

action "bar" {
	uses = "actions/bin/sh@master"
 	args = ["cat path/to/file"]
}

