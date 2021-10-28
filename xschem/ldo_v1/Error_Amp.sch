v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1050 -1430 1050 -1410 { lab=avdd}
N 1050 -1430 1300 -1430 { lab=avdd}
N 1300 -1430 1300 -1410 { lab=avdd}
N 1300 -1350 1300 -1310 { lab=#net1}
N 1090 -1380 1260 -1380 { lab=#net2}
N 1050 -1350 1050 -1310 { lab=#net2}
N 1050 -1250 1050 -1190 { lab=#net3}
N 1050 -1190 1300 -1190 { lab=#net3}
N 1300 -1250 1300 -1190 { lab=#net3}
N 1140 -1190 1140 -1170 { lab=#net3}
N 1050 -1280 1300 -1280 { lab=agnd}
N 1230 -1280 1230 -1100 { lab=agnd}
N 1140 -1100 1230 -1100 { lab=agnd}
N 1300 -1380 1400 -1380 { lab=avdd}
N 1400 -1430 1400 -1380 { lab=avdd}
N 1290 -1430 1400 -1430 { lab=avdd}
N 950 -1380 1050 -1380 { lab=avdd}
N 950 -1430 950 -1380 { lab=avdd}
N 950 -1430 1050 -1430 { lab=avdd}
N 1140 -1140 1230 -1140 { lab=agnd}
N 1520 -1400 1560 -1400 { lab=#net1}
N 1390 -1430 1520 -1430 { lab=avdd}
N 1600 -1400 1700 -1400 { lab=avdd}
N 1600 -1430 1700 -1430 { lab=avdd}
N 1700 -1430 1700 -1400 { lab=avdd}
N 1600 -1370 1600 -1330 { lab=out}
N 1230 -1100 1520 -1100 { lab=agnd}
N 1600 -1100 1690 -1100 { lab=agnd}
N 1520 -1260 1560 -1260 { lab=vb}
N 1070 -1140 1100 -1140 { lab=vb}
N 1160 -1380 1160 -1330 { lab=#net2}
N 1050 -1330 1160 -1330 { lab=#net2}
N 1520 -1330 1530 -1330 { lab=#net4}
N 1590 -1330 1600 -1330 { lab=out}
N 1600 -1330 1600 -1290 { lab=out}
N 1600 -1260 1700 -1260 { lab=agnd}
N 1700 -1260 1700 -1100 { lab=agnd}
N 1690 -1100 1700 -1100 { lab=agnd}
N 1600 -1230 1600 -1100 { lab=agnd}
N 990 -1280 1010 -1280 { lab=neg}
N 1340 -1280 1370 -1280 { lab=pos}
N 1520 -1400 1520 -1360 { lab=#net1}
N 1300 -1330 1360 -1330 { lab=#net1}
N 1330 -1360 1440 -1360 { lab=#net1}
N 1330 -1360 1330 -1330 { lab=#net1}
N 1600 -1330 1660 -1330 { lab=out}
N 1660 -1330 1670 -1330 { lab=out}
N 1670 -1330 1680 -1330 { lab=out}
N 1540 -1310 1560 -1310 { lab=agnd}
N 1480 -1310 1480 -1100 { lab=agnd}
N 720 -1220 760 -1220 { lab=vb}
N 720 -1270 720 -1220 { lab=vb}
N 720 -1270 800 -1270 { lab=vb}
N 800 -1190 800 -1170 { lab=agnd}
N 800 -1220 880 -1220 { lab=agnd}
N 880 -1220 880 -1180 { lab=agnd}
N 800 -1180 880 -1180 { lab=agnd}
N 690 -1220 720 -1220 { lab=vb}
N 800 -1270 800 -1250 { lab=vb}
N 800 -1320 800 -1270 { lab=vb}
N 1140 -1110 1140 -1100 { lab=agnd}
N 800 -1170 800 -1100 { lab=agnd}
N 800 -1100 1140 -1100 { lab=agnd}
N 1440 -1360 1520 -1360 { lab=#net1}
N 1520 -1430 1600 -1430 { lab=avdd}
N 1520 -1100 1540 -1100 { lab=agnd}
N 1540 -1100 1600 -1100 { lab=agnd}
N 1480 -1310 1540 -1310 { lab=agnd}
N 1360 -1330 1420 -1330 { lab=#net1}
N 1480 -1330 1520 -1330 { lab=#net4}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1070 -1380 0 1 {name=M8
L=1.2
W=3
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1030 -1280 0 0 {name=M9
L=1
W=2
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1320 -1280 0 1 {name=M10
L=1
W=2
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1280 -1380 0 0 {name=M11
L=1.2
W=3
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1120 -1140 0 0 {name=M13
L=1
W=1
nf=1
mult=8
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1580 -1400 0 0 {name=M14
L=1.2
W=3
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1580 -1260 0 0 {name=M18
L=1
W=1
nf=1
mult=12
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 1070 -1140 0 0 {name=l15 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 1520 -1260 0 0 {name=l16 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 1660 -1330 1 0 {name=l30 sig_type=std_logic lab=out}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1450 -1330 3 1 {name=C3 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1560 -1330 3 0 {name=R7
W=0.69
L=4.5
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 780 -1220 0 0 {name=M20
L=1
W=1
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 690 -1220 0 0 {name=l14 sig_type=std_logic lab=vb}
C {devices/opin.sym} 1670 -1330 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 1140 -1430 0 0 {name=p2 lab=avdd}
C {devices/iopin.sym} 1160 -1100 0 0 {name=p3 lab=agnd}
C {devices/iopin.sym} 800 -1300 3 0 {name=p4 lab=vb}
C {devices/ipin.sym} 1000 -1280 0 0 {name=p5 lab=neg}
C {devices/ipin.sym} 1350 -1280 0 1 {name=p6 lab=pos}
