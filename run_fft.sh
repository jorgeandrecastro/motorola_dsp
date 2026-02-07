#!/bin/bash

echo "--- 1. Génération du signal via Python ---"
python signal_gen.py

echo "--- 2. Compilation du Hardware (Verilog) ---"
iverilog -o fft_sim rtl/fft_core.v rtl/tb_fft.v

echo "--- 3. Lancement de la simulation ---"
vvp fft_sim

echo "--- Fin du processus ---"
