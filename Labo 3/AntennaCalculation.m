clear
clc

fr = 2.425e9;
eps_r = 4.4;
h = 1.5e-3;
c = 3e8;

W = c/(2*fr)/sqrt((eps_r+1)/2)
eps_eff = (eps_r+1)/2 + (eps_r-1)/2/sqrt(1+(12*h)/W)
delta_l = 0.412 * h * ((eps_eff + 0.3)/(eps_eff - 0.258))*(W/h+0.264)/(W/h+0.8)
Leff = c/(2*fr*sqrt(eps_eff))
L = Leff - 2 * delta_l

GND_over_size = 6*h