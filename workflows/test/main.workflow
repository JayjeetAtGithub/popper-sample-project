workflow "foo" {
	resolves = "bar"
}

action "bar" {
	uses = "actions/bin/sh@master"
 	runs = ["cat", "path/to/file"]
}
