v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3160 -3340 3360 -3340 { lab=#net1}
N 3160 -3430 3160 -3400 { lab=#net2}
N 3160 -3430 3360 -3430 { lab=#net2}
N 3080 -3550 3080 -3440 { lab=#net3}
N 3080 -3550 3500 -3550 { lab=#net3}
N 3500 -3550 3500 -3480 { lab=#net3}
N 3800 -3350 3800 -3330 { lab=ldo_out}
N 3800 -3180 3800 -3160 { lab=pos}
N 3800 -3490 3800 -3410 { lab=#net3}
N 3800 -3380 3900 -3380 { lab=#net3}
N 3900 -3490 3900 -3380 { lab=#net3}
N 3720 -3170 3800 -3170 { lab=pos}
N 3800 -3340 3900 -3340 { lab=ldo_out}
N 3900 -3340 3940 -3340 { lab=ldo_out}
N 3800 -3570 3800 -3490 { lab=#net3}
N 3900 -3570 3900 -3490 { lab=#net3}
N 3800 -3570 3900 -3570 { lab=#net3}
N 3800 -3270 3800 -3260 { lab=#net4}
N 3800 -3200 3800 -3190 { lab=pos}
N 3820 -3280 3820 -3230 { lab=GND}
N 3820 -3300 3820 -3280 { lab=GND}
N 3800 -3190 3800 -3180 { lab=pos}
N 3800 -3100 3800 -3090 { lab=#net5}
N 3820 -3130 3820 -3060 { lab=GND}
N 3820 -3060 3820 -3030 { lab=GND}
N 3810 -3030 3820 -3030 { lab=GND}
N 3800 -3030 3810 -3030 { lab=GND}
N 3800 -3030 3800 -3020 { lab=GND}
N 3820 -3220 3820 -3130 { lab=GND}
N 3820 -3230 3820 -3220 { lab=GND}
N 3800 -3030 3800 -2990 { lab=GND}
N 3800 -2990 3800 -2980 { lab=GND}
N 3500 -3550 3800 -3550 { lab=#net3}
N 3660 -3380 3760 -3380 { lab=#net6}
N 3660 -3380 3660 -3340 { lab=#net6}
N 3080 -3290 3080 -3270 { lab=GND}
N 3500 -3180 3500 -3160 { lab=GND}
N 3640 -3170 3720 -3170 { lab=pos}
N 3640 -3170 3640 -3020 { lab=pos}
N 3320 -3020 3640 -3020 { lab=pos}
N 3320 -3250 3320 -3020 { lab=pos}
N 3320 -3250 3360 -3250 { lab=pos}
N 2980 -3370 3010 -3370 {}
C {ldo_v2/bgr2.sym} 1720 -1720 0 0 {name=xb2}
C {ldo_v1/Error_Amp.sym} 2600 -1960 0 0 {name=y1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 3780 -3380 0 0 {name=M24
L=0.5
W=10
nf=1
mult=800
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 3720 -3170 1 0 {name=l25 sig_type=std_logic lab=pos}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3800 -3230 0 1 {name=R2
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3800 -3300 0 1 {name=R3
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3800 -3130 0 1 {name=R1
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 3800 -3060 0 1 {name=R4
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=4}
C {devices/gnd.sym} 3800 -2980 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 3890 -3340 0 0 {name=p3 lab=ldo_out
}
C {devices/gnd.sym} 3500 -3160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 3080 -3270 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 3000 -3370 0 0 {name=p2 lab=en}
