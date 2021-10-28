v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4950 -1770 5020 -1770 { lab=#net1}
N 5020 -1840 5020 -1770 { lab=#net1}
N 5020 -1840 5250 -1840 { lab=#net1}
N 4950 -1750 5250 -1750 { lab=#net2}
N 5790 -1720 5790 -1700 { lab=ldo_out}
N 5790 -1550 5790 -1530 { lab=pos}
N 5790 -1860 5790 -1780 { lab=in}
N 5790 -1750 5890 -1750 { lab=in}
N 5890 -1860 5890 -1750 { lab=in}
N 5710 -1540 5790 -1540 { lab=pos}
N 5790 -1710 5890 -1710 { lab=ldo_out}
N 5890 -1710 5930 -1710 { lab=ldo_out}
N 5790 -1940 5790 -1860 { lab=in}
N 4840 -1940 5790 -1940 { lab=in}
N 4840 -1940 4840 -1810 { lab=in}
N 5390 -1940 5390 -1890 { lab=in}
N 5210 -1470 5580 -1470 { lab=pos}
N 5210 -1660 5210 -1510 { lab=pos}
N 5210 -1660 5250 -1660 { lab=pos}
N 5580 -1510 5580 -1470 { lab=pos}
N 5210 -1510 5210 -1480 { lab=pos}
N 5210 -1480 5210 -1470 { lab=pos}
N 5890 -1940 5890 -1860 { lab=in}
N 5790 -1940 5890 -1940 { lab=in}
N 4840 -1720 4840 -1700 { lab=GND}
N 5580 -1540 5710 -1540 { lab=pos}
N 5580 -1540 5580 -1510 { lab=pos}
N 5790 -1640 5790 -1630 { lab=#net3}
N 5790 -1570 5790 -1560 { lab=pos}
N 5810 -1650 5810 -1600 { lab=GND}
N 5810 -1670 5810 -1650 { lab=GND}
N 5790 -1560 5790 -1550 { lab=pos}
N 5790 -1470 5790 -1460 { lab=#net4}
N 5810 -1500 5810 -1430 { lab=GND}
N 5810 -1430 5810 -1400 { lab=GND}
N 5800 -1400 5810 -1400 { lab=GND}
N 5790 -1400 5800 -1400 { lab=GND}
N 5790 -1400 5790 -1390 { lab=GND}
N 5810 -1590 5810 -1500 { lab=GND}
N 5810 -1600 5810 -1590 { lab=GND}
N 5390 -1590 5420 -1590 { lab=GND}
N 5420 -1590 5420 -1560 { lab=GND}
N 5790 -1400 5790 -1360 { lab=GND}
N 5550 -1750 5750 -1750 { lab=#net5}
N 4710 -1760 4760 -1760 { lab=xxx}
N 5790 -1360 5790 -1350 { lab=GND}
N 5420 -1560 5420 -1540 { lab=GND}
N 4840 -1700 4840 -1690 { lab=GND}
C {bgr_sym.sym} 3910 -840 0 0 {name=x1}
C {Error_Amp.sym} 4490 -370 0 0 {name=xy1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 5770 -1750 0 0 {name=M24
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
C {devices/lab_pin.sym} 5710 -1540 1 0 {name=l25 sig_type=std_logic lab=pos}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 5790 -1600 0 1 {name=R2
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 5790 -1670 0 1 {name=R3
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 5790 -1500 0 1 {name=R1
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 5790 -1430 0 1 {name=R4
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=4}
C {devices/ipin.sym} 5280 -1940 0 0 {name=p1 lab=in}
C {devices/gnd.sym} 5790 -1350 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 5420 -1540 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 4840 -1690 0 0 {name=l4 lab=GND}
C {devices/ipin.sym} 4730 -1760 0 0 {name=p2 lab=en}
C {devices/opin.sym} 5880 -1710 0 0 {name=p3 lab=ldo_out
}
