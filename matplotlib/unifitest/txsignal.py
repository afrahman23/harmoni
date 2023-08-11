import matplotlib.pyplot as plt

distance = [0,3,7,20,30,35,40,45]
signalStrength = [-26,-30,-37,-48,-51,-53,-63,0]

plt.plot(distance,signalStrength, marker = 'o')
plt.legend(["TX Signal Strenght"], prop = { "size": 20 }, loc ="upper right")

plt.show()