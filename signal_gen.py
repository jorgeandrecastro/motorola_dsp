import numpy as np

N = 64
t = np.arange(N)
# Signal sinusoïdal propre
signal = (127 * (0.5 * np.sin(2 * np.pi * 5 * t / N) + 0.5)).astype(int)

with open("input_signal.hex", "w") as f:
    for val in signal:
        f.write(f"{val:0x}\n") # On écrit en hexadécimal
