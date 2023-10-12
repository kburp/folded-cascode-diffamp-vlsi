v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -420 120 -400 {
lab=Vbp}
N 110 -420 120 -420 {
lab=Vbp}
N 120 -300 120 -280 {
lab=Vbn}
N 110 -280 120 -280 {
lab=Vbn}
N 210 -350 240 -350 {
lab=Vout}
N 240 -350 270 -350 {
lab=Vout}
N 220 -350 220 -220 {
lab=Vout}
N 50 -220 220 -220 {
lab=Vout}
N 50 -320 50 -220 {
lab=Vout}
N 50 -320 70 -320 {
lab=Vout}
C {madvlsi/gnd.sym} 140 -280 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 140 -420 0 0 {name=l2 lab=VDD}
C {madvlsi/vsource.sym} -240 -450 0 0 {name=Vdd
value=1.8}
C {madvlsi/vsource.sym} -240 -310 0 0 {name=V1
value="0.5 AC 1"}
C {madvlsi/gnd.sym} -240 -420 0 0 {name=l3 lab=GND}
C {madvlsi/vdd.sym} -240 -480 0 0 {name=l4 lab=VDD}
C {madvlsi/gnd.sym} -240 -280 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -240 -340 1 0 {name=p1 sig_type=std_logic lab=V1
}
C {devices/lab_pin.sym} 70 -380 0 0 {name=p2 sig_type=std_logic lab=V1
}
C {devices/lab_pin.sym} 110 -420 0 0 {name=p5 sig_type=std_logic lab=Vbp

}
C {devices/lab_pin.sym} 110 -280 0 0 {name=p7 sig_type=std_logic lab=Vbn

}
C {devices/lab_pin.sym} 170 -370 1 0 {name=p10 sig_type=std_logic lab=Vcp

}
C {devices/lab_pin.sym} 170 -330 3 0 {name=p12 sig_type=std_logic lab=Vcn

}
C {devices/lab_pin.sym} 270 -350 2 0 {name=p13 sig_type=std_logic lab=Vout
}
C {madvlsi/tt_models.sym} -280 -210 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/code_shown.sym} -60 -210 0 0 {name=SPICE only_toplevel=false value=".control
ac dec 20 1 1e9
let mag=db(v(vout))
let phase=180*cph(v(vout))/pi
plot mag phase
.endc"}
C {devices/lab_pin.sym} -60 -390 2 0 {name=p4 sig_type=std_logic lab=Vbp

}
C {devices/lab_pin.sym} -60 -300 2 0 {name=p6 sig_type=std_logic lab=Vbn

}
C {devices/lab_pin.sym} -60 -330 2 0 {name=p9 sig_type=std_logic lab=Vcn

}
C {devices/lab_pin.sym} -60 -360 2 0 {name=p11 sig_type=std_logic lab=Vcp

}
C {madvlsi/vdd.sym} -100 -430 0 0 {name=l7 lab=VDD}
C {madvlsi/gnd.sym} -100 -260 0 0 {name=l8 lab=GND}
C {madvlsi/isource.sym} -310 -370 2 0 {name=Ib
value=1u}
C {madvlsi/gnd.sym} -310 -340 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -310 -400 1 0 {name=p14 sig_type=std_logic lab=Vbn

}
C {/home/madvlsi/Documents/mp3/biasgen_lds.sym} -130 -250 0 0 {name=X2}
C {madvlsi/capacitor.sym} 250 -320 0 0 {name=C1
value=2p
m=1}
C {madvlsi/gnd.sym} 250 -290 0 0 {name=l6 lab=GND}
C {/home/madvlsi/Documents/mp3/second_try/fc_diffamp_lds.sym} -20 -280 0 0 {name=X1}
