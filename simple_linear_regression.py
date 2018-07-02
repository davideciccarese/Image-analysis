#!/usr/bin/env python3

#%%
from sklearn.linear_model import LinearRegression
import matplotlib
matplotlib.use('qt5agg')
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os

df=pd.read_csv("/path/file.csv", sep=';') # check that the separation e.g. ; or ,

print(df)  # look at entyre table
#df.tail() #look at the table

#read the variables
x = df.namex
y = df.namey
 
# Create model
model = LinearRegression(fit_intercept=True)
model.fit(x[:, np.newaxis], y)
 
xfit = np.linspace(0, 1.2)
yfit = model.predict(xfit[:, np.newaxis])

print(model.intercept_)
print(model.coef_)

# plot

plt.scatter(x, y,
            color='red', marker='o', label='whatever you like')

plt.plot(xfit, yfit);
plt.xlabel('this is the xlabel')
plt.ylabel('this is the ylabel')
plt.legend(loc='upper left') # where you want the legend

plt.tight_layout()
plt.savefig('./name_you_like.png', dpi=300)
plt.show()

