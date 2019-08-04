from spython.main import Client
Client.pull(image='docker://busybox', name='c1')
print(os.listdir())
