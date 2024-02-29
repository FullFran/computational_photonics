import numpy as np
import matplotlib.pyplot as plt
# Vamos a hacer un código para hacer un diagrama b-V

def b_v(nu, a, Nmax=400):
    b = np.linspace(0, 1, Nmax)

    V1 = np.arctan(np.sqrt(b/(1-b)))
    V2 = np.arctan(np.sqrt((b+a)/1-b))
    V3 = 1/np.sqrt(1-b)
    V = (nu*np.pi + V1 + V2 )*V3
    return b, V