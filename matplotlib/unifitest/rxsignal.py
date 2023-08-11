import matplotlib.pyplot as plt

distance = [0,3,7,20,30,35,40,45]
signalStrength = [-26,-30,-37,-48,-52,-52,0,0]
# speedTx = [10,10,10,7.4,3.3,10,10,0]
plt.plot(distance,signalStrength, marker = 'o', color='red')
plt.legend(["RX Signal Strenght"], prop = { "size": 20 }, loc ="upper right")

plt.show()