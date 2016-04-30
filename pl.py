from pylab import *
import sys

file1 = open("tempactsumstat")
y = []

for line in file1.readlines():
  t1, t2 = line.strip().split(" ")
  y.append(int(t2))
plot(y,x)
savefig(sys.argv[-1])
