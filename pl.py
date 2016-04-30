from pylab import *
import sys

file1 = open("tempactsumstat")
x = []
y = []

for line in file1.readlines():
  t1, t2 = line.strip().split(" ")
  x.append(int(t1))
  y.append(int(t2))
#plot(y,x,"+")
plot(y,x)
savefig(sys.argv[-1])
#show()