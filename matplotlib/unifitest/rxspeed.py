import matplotlib.pyplot as plt

distance = [0,3,7,20,30,35,40,45]
speedRx = [9.7,9.6,9.7,8.8,5.4,8.0,0,0]
plt.plot(distance,speedRx, marker = 'o', color='red')
plt.legend(["RX Speed"], prop = { "size": 20 }, loc ="upper right")

plt.show()