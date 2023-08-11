import matplotlib.pyplot as plt

distance = [0,3,7,20,30,35,40,45]
speedTx = [10,10,10,7.4,3.3,10,10,0]
plt.plot(distance,speedTx, marker = 'o')
plt.legend(["TX Speed"], prop = { "size": 20 }, loc ="upper right")

plt.show()