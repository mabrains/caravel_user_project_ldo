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
N 5710 -1750 5750 -1750 { lab=#net3}
N 5790 -1720 5790 -1700 { lab=ldo_out}
N 5790 -1550 5790 -1530 { lab=pos}
N 5790 -1860 5790 -1780 { lab=VDD}
N 5790 -1750 5890 -1750 { lab=VDD}
N 5890 -1860 5890 -1750 { lab=VDD}
N 5710 -1540 5790 -1540 { lab=pos}
N 5790 -1710 5890 -1710 { lab=ldo_out}
N 5890 -1710 5930 -1710 { lab=ldo_out}
N 5790 -1940 5790 -1860 { lab=VDD}
N 4840 -1940 5790 -1940 { lab=VDD}
N 4840 -1940 4840 -1810 { lab=VDD}
N 5390 -1940 5390 -1890 { lab=VDD}
N 5210 -1470 5580 -1470 { lab=pos}
N 5210 -1660 5210 -1510 { lab=pos}
N 5210 -1660 5250 -1660 { lab=pos}
N 5580 -1510 5580 -1470 { lab=pos}
N 5210 -1510 5210 -1480 { lab=pos}
N 5210 -1480 5210 -1470 { lab=pos}
N 5890 -1940 5890 -1860 { lab=VDD}
N 5790 -1940 5890 -1940 { lab=VDD}
N 5330 -1970 5330 -1940 { lab=VDD}
N 4840 -1720 4840 -1700 { lab=GND}
N 4550 -1730 4550 -1690 { lab=GND}
N 4550 -1810 4550 -1790 { lab=VDD}
N 4550 -1940 4550 -1810 { lab=VDD}
N 4550 -1940 4840 -1940 { lab=VDD}
N 5650 -1680 5650 -1650 { lab=#net5}
N 5580 -1540 5710 -1540 { lab=pos}
N 5580 -1540 5580 -1510 { lab=pos}
N 5620 -1750 5710 -1750 { lab=#net3}
N 5650 -1750 5650 -1740 { lab=#net3}
N 5650 -1590 5650 -1390 { lab=#net4}
N 5650 -1390 5790 -1390 { lab=#net4}
N 5550 -1750 5560 -1750 { lab=#net6}
N 5790 -1640 5790 -1630 { lab=#net7}
N 5790 -1570 5790 -1560 { lab=pos}
N 5810 -1650 5810 -1600 { lab=#net4}
N 5810 -1670 5810 -1650 { lab=#net4}
N 5790 -1560 5790 -1550 { lab=pos}
N 5790 -1470 5790 -1460 { lab=#net8}
N 5810 -1500 5810 -1430 { lab=#net4}
N 5810 -1430 5810 -1400 { lab=#net4}
N 5800 -1400 5810 -1400 { lab=#net4}
N 5790 -1400 5800 -1400 { lab=#net4}
N 5790 -1400 5790 -1390 { lab=#net4}
N 5810 -1590 5810 -1500 { lab=#net4}
N 5810 -1600 5810 -1590 { lab=#net4}
N 4320 -1820 4320 -1800 { lab=en}
N 4320 -1740 4320 -1710 { lab=GND}
N 4710 -1760 4760 -1760 { lab=en}
N 5390 -1590 5420 -1590 { lab=GND}
N 5420 -1590 5420 -1560 { lab=GND}
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
C {devices/code_shown.sym} 6370 -2330 0 0 {name= SPICE1 only_toplevel="false" value=
"

.param R=36k
R10 ldo_out GND \{R\}
IL ldo_out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL ldo_out gnd 10p
.lib "/home/mustafa/mabrains/pdks/share/pdk/sky130A/libs.tech/ngspice/sky130.lib_mod.spice" tt





.nodeset v(x1.inn)=1.2
.nodeset v(x1.inp)=1.2
.nodeset v(x1.mir)=1
.nodeset v(x1.net5)=1
.nodeset v(x1.bg_out)=1.1
.nodeset v(ldo_out)=1.8
.nodeset v(pos)=1.1
*.nodeset v(net3)=0.8
*.nodeset v(net1)=0.7
.nodeset v(x1.net6)=0.9
*.nodeset v(net7)=0.75
.nodeset v(xy1.vb)=0.9


.option temp=27
*User_defined_functions
.control
define max(vector_name) (vecmax(vector_name))
define min(vector_name) (vecmin(vector_name))
.endc


*Temp_sweep
.control
alter IL 0
dc temp 85 0 -1
let temp_coeff=1000000*(max(ldo_out)-min(ldo_out))/85
print temp_coeff
plot v(ldo_out)
set wr_singlescale
set wr_vecnames
set appendwrite
.endc


.control
alter IL 0
*alter R10 1G
op
let iq =i(Vs)
print iq
*print all
set wr_singlescale
set wr_vecnames
set appendwrite
if v(ldo_out)>1
wrdata op_point_test v(ldo_out)
end
.endc



*Stability_Analysis
.control
alter IL 0
alter Vs AC =0
alter Vt AC=1
ac dec 10 1 1G
plot vdb(out)
plot (180/pi)*vp(out)
let ph= (180/pi)*vp(out)
meas ac pm FIND ph WHEN vdb(out)=0
.endc


*PSRR_Analysis
.control
alter IL 0
alter Vs AC =1
alter Vt AC=0
alter L1 0
alter C2 0
ac dec 10 1 1G
meas AC PSRR100 FIND vdb(ldo_out) AT=100
meas AC PSRR100k FIND vdb(ldo_out) AT=100k
plot vdb(ldo_out)
.endc




*supply_sweep
.control
alter IL 0
dc Vs 2.8 0 -0.01
plot vdd ldo_out
meas DC Vldo_Sup_2 FIND ldo_out AT=2
meas DC Vldo_nom FIND ldo_out AT=2.3
meas DC Vldo_Sup_2_8 FIND ldo_out AT=2.8
let line_reg = abs((Vldo_Sup_2_8-Vldo_Sup_2)/0.8)
print line_reg
meas DC vin WHEN v(ldo_out)=1.764
let dropout=vin-1.764
print dropout
set wr_singlescale
set wr_vecnames
set appendwrite
.endc





*Load_Reg_switches
*V1 c1 0 DC 0 PWL(0 5 20u 5 35u 0 50u 0 100u 0)
*V2 c2 0 DC 0 PWL(0 0 20u 0 35u 0 50u 5 100u 5)
*s1 ldo_out 2 c1 0 switch1 ON
*s2 ldo_out 3 c2 0 switch1 OFF
*.model switch1 sw vt=0.1 ron =0.1 roff =1G
*R1 2 0 18k
*R2 3 0 180

*.control
*alter R10 1G
*tran 0.1u 90u
*plot v(ldo_out) v(c1) v(c2)
*meas TRAN V_ldo_100u FIND v(ldo_out) AT=10u
*meas TRAN V_ldo_10m FIND v(ldo_out) AT=50u
*let load_reg= V_ldo_100u-V_ldo_10m
*print load_reg
*.endc


**Load_Transient
.control
alter IL 50u
alter R10 3600k
tran 0.1u 100u
meas TRAN V_ldo_100u FIND v(ldo_out) AT=5u
meas TRAN V_ldo_10m FIND v(ldo_out) AT=100u
let load_reg= V_ldo_100u-V_ldo_10m
let load_current =(-1*i(Vs)-131.8e-6)
print load_reg
plot load_current v(ldo_out)-1.8
.endc


**Transient
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse] = [ 1.8 3 10u 10u 1u 100u 200u ]
alter IL 0
tran 0.1u 100u
plot vdd ldo_out
.endc
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse] = [ 0 2.3 10u 0.1u 1u 100u 200u ]
tran 0.1u 100u
plot vdd ldo_out
.endc
.control
alter R10 36k
alter @IL[PWL] = [ 0 0 10u 0 20u 0 30u 0 ]
alter @Ven[pulse] = [ 0 2.3 10u 0.1u 1u 100u 200u ]
tran 0.1u 100u
*meas TRAN st_up_time when v(ldo_out)>1.782
plot en ldo_out
.endc





"}
C {devices/vsource.sym} 4550 -1760 0 0 {name=Vs value=2.3}
C {devices/vsource.sym} 5650 -1620 0 0 {name=Vt value=0}
C {devices/capa.sym} 5650 -1710 0 0 {name=C2
m=1
value=5G
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 5590 -1750 3 0 {name=L1
m=1
value=5G
footprint=1206
device=inductor}
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
C {devices/vsource.sym} 4320 -1770 0 0 {name=Ven value=2.3}
C {devices/lab_pin.sym} 4320 -1820 0 0 {name=l27 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 4710 -1760 0 0 {name=l6 sig_type=std_logic lab=en}
C {devices/gnd.sym} 4550 -1690 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 4320 -1710 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 4840 -1700 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 5420 -1560 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 5740 -1390 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 5330 -1970 0 0 {name=l5 lab=VDD}
C {devices/lab_pin.sym} 5930 -1710 0 1 {name=l8 sig_type=std_logic lab=ldo_out}
