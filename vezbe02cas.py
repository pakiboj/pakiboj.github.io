# %% [markdown]
# ## Vežbe 02 - Uvod u neuralne mreže

# %% [markdown]
# ### Učitavanje neophodnih biblioteka

# %%
import matplotlib.pyplot as plt
import numpy as np

from keras import Sequential
from keras.layers import Dense

from sklearn.metrics import accuracy_score

# %% [markdown]
# ### Učitavanje podataka

# %%
# Podaci su smešteni u datoteci podaciCas02. U prve dve kolone se nalaze obeležja skupa podataka,
# dok treća kolona predstavlja pripadnost klasi.
data = None

ulaz = None
izlaz = None

K1 = None
K2 = None

plt.figure()
plt.plot(K1[:, 0], K1[:, 1], 'o')
plt.plot(K2[:, 0], K2[:, 1], '*')
plt.legend(['K0', 'K1'])
plt.xlabel('x1')
plt.ylabel('x2')
plt.show()

# %% [markdown]
# ### Mešanje podataka

# %%
ind = None
ulaz_mix = None
izlaz_mix = None

# %% [markdown]
# ### Podela na trening i test skup

# %%
Ntrain = None

ulaz_train = None
izlaz_train = None

ulaz_test = None
izlaz_test = None

plt.figure()
plt.plot(ulaz_train[:, 0], ulaz_train[:, 1], 'o')
plt.plot(ulaz_test[:, 0], ulaz_test[:, 1], '*')
plt.legend(['Trening skup', 'Test skup'])
plt.xlabel('x1')
plt.ylabel('x2')
plt.show()

# %% [markdown]
# ### Kreiranje i treniranje neuralne mreže

# %%
model = None

# %% [markdown]
# ### Granica odlučivanja

# %%
Ntest = 100
x = np.linspace(-5, 5, Ntest)
y = np.linspace(-5, 5, Ntest)
Xgrid, Ygrid = np.meshgrid(x, y)
Xgrid = Xgrid.reshape((1, Ntest**2))
Ygrid = Ygrid.reshape((1, Ntest**2))

grid = np.append(Xgrid, Ygrid, axis=0).T

Ypred = None
        
K1pred = None
K2pred = None

plt.figure()
plt.plot(K1pred[:, 0], K1pred[:, 1], 'r.', alpha=0.1)
plt.plot(K2pred[:, 0], K2pred[:, 1], 'b.', alpha=0.1)
plt.plot(K1[:, 0], K1[:, 1], 'r.')
plt.plot(K2[:, 0], K2[:, 1], 'b.')
plt.show()

# %% [markdown]
# ### Provera uspešnosti rada neuralne mreže

# %%
izlaz_pred = None

tacnost = None
print('Tačnost neuralne mreže na test skupu iznosi ' + str(tacnost*100) + '%.')


