from spython.main import Client
import os
Client.pull(image='docker://busybox', name='c1')
print(os.listdir())
