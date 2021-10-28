v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3590 -3720 3790 -3720 { lab=#net1}
N 3590 -3810 3590 -3780 { lab=#net2}
N 3590 -3810 3790 -3810 { lab=#net2}
N 3510 -3930 3510 -3820 { lab=VDD}
N 3510 -3930 3930 -3930 { lab=VDD}
N 3930 -3930 3930 -3860 { lab=VDD}
N 4230 -3730 4230 -3710 { lab=ldo_out}
N 4230 -3560 4230 -3540 { lab=pos}
N 4230 -3870 4230 -3790 { lab=VDD}
N 4230 -3760 4330 -3760 { lab=VDD}
N 4330 -3870 4330 -3760 { lab=VDD}
N 4150 -3550 4230 -3550 { lab=pos}
N 4230 -3720 4330 -3720 { lab=ldo_out}
N 4330 -3720 4370 -3720 { lab=ldo_out}
N 4230 -3950 4230 -3870 { lab=VDD}
N 4330 -3950 4330 -3870 { lab=VDD}
N 4230 -3950 4330 -3950 { lab=VDD}
N 4230 -3650 4230 -3640 { lab=#net3}
N 4230 -3580 4230 -3570 { lab=pos}
N 4250 -3660 4250 -3610 { lab=GND}
N 4250 -3680 4250 -3660 { lab=GND}
N 4230 -3570 4230 -3560 { lab=pos}
N 4230 -3480 4230 -3470 { lab=#net4}
N 4250 -3510 4250 -3440 { lab=GND}
N 4250 -3440 4250 -3410 { lab=GND}
N 4240 -3410 4250 -3410 { lab=GND}
N 4230 -3410 4240 -3410 { lab=GND}
N 4230 -3410 4230 -3400 { lab=GND}
N 4250 -3600 4250 -3510 { lab=GND}
N 4250 -3610 4250 -3600 { lab=GND}
N 4230 -3410 4230 -3370 { lab=GND}
N 4230 -3370 4230 -3360 { lab=GND}
N 3930 -3930 4230 -3930 { lab=VDD}
N 4090 -3760 4190 -3760 { lab=#net5}
N 4090 -3760 4090 -3720 { lab=#net5}
N 3510 -3670 3510 -3650 { lab=GND}
N 3930 -3560 3930 -3540 { lab=GND}
N 4070 -3550 4150 -3550 { lab=pos}
N 4070 -3550 4070 -3400 { lab=pos}
N 3750 -3400 4070 -3400 { lab=pos}
N 3750 -3630 3750 -3400 { lab=pos}
N 3750 -3630 3790 -3630 { lab=pos}
N 3410 -3750 3440 -3750 { lab=en}
N 3030 -3530 3030 -3490 { lab=GND}
N 3030 -3610 3030 -3590 { lab=VDD}
N 2800 -3620 2800 -3600 { lab=en}
N 2800 -3540 2800 -3510 { lab=GND}
N 3820 -3970 3820 -3930 { lab=VDD}
N 3030 -3750 3030 -3610 { lab=VDD}
N 3030 -3750 3040 -3750 { lab=VDD}
C {ldo_v2/bgr2.sym} 2150 -2100 0 0 {name=xb2}
C {ldo_v1/Error_Amp.sym} 3030 -2340 0 0 {name=xy1}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 4210 -3760 0 0 {name=M24
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
C {devices/lab_pin.sym} 4150 -3550 1 0 {name=l25 sig_type=std_logic lab=pos}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 4230 -3610 0 1 {name=R2
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=3}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 4230 -3680 0 1 {name=R3
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=8}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 4230 -3510 0 1 {name=R1
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=2}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 4230 -3440 0 1 {name=R4
W=0.69
L=24
model=res_xhigh_po_0p69
spiceprefix=X
mult=4}
C {devices/gnd.sym} 4230 -3360 0 0 {name=l2 lab=GND}
C {devices/opin.sym} 4320 -3720 0 0 {name=p3 lab=ldo_out
}
C {devices/gnd.sym} 3930 -3540 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 3510 -3650 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 3030 -3560 0 0 {name=Vs value=2.3}
C {devices/vsource.sym} 2800 -3570 0 0 {name=Ven value=2.3}
C {devices/lab_pin.sym} 2800 -3620 0 0 {name=l27 sig_type=std_logic lab=en}
C {devices/gnd.sym} 3030 -3490 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 2800 -3510 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 3820 -3970 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 3040 -3750 0 0 {name=l8 lab=VDD}
C {devices/code_shown.sym} 4760 -4550 0 0 {name= SPICE1 only_toplevel="false" value=
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
C {devices/lab_pin.sym} 3410 -3750 0 0 {name=l9 sig_type=std_logic lab=en}
