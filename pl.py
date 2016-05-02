from pylab import *
import sys

file1 = open("tempactsumstat")
x = []

for line in file1.readlines():
  t1, t2 = line.strip().split(" ")
  x.append(int(t1))
plot(x)
savefig(sys.argv[-1])
