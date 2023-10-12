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
N 250 -350 280 -350 {
lab=Vout}
N 120 -680 120 -660 {
lab=VbpQ}
N 110 -680 120 -680 {
lab=VbpQ}
N 120 -560 120 -540 {
lab=VbnQ}
N 110 -540 120 -540 {
lab=VbnQ}
N 270 -610 300 -610 {
lab=VoutQ}
N 210 -610 270 -610 {
lab=VoutQ}
N 240 -610 240 -480 {
lab=VoutQ}
N 50 -480 240 -480 {
lab=VoutQ}
N 50 -580 50 -480 {
lab=VoutQ}
N 50 -580 70 -580 {
lab=VoutQ}
N 210 -350 250 -350 {
lab=Vout}
N 50 -320 70 -320 {
lab=#net1}
N 50 -320 50 -160 {
lab=#net1}
N 230 -350 230 -160 {
lab=Vout}
N 110 -160 170 -160 {
lab=#net2}
C {madvlsi/gnd.sym} 140 -280 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 140 -420 0 0 {name=l2 lab=VDD}
C {madvlsi/vsource.sym} -240 -450 0 0 {name=Vdd
value=1.8}
C {madvlsi/vsource.sym} -240 -310 0 0 {name=V1
value=1}
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
C {devices/lab_pin.sym} 280 -350 2 0 {name=p13 sig_type=std_logic lab=Vout
}
C {madvlsi/tt_models.sym} 470 -670 0 0 {
name=TT_MODELS
only_toplevel=false
value=".option wnflag=1
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/sky130.lib.spice tt"
}
C {devices/code_shown.sym} 360 -530 0 0 {name=SPICE only_toplevel=false value=".param B=0
.control
ac dec 20 1 1e9
alterparam B=1
reset
ac dec 20 1 1e9
setplot new
set curplottitle=Loopgain
let frequency=ac1.frequency
let T=(ac1.i(V3)+ac2.i(V2))/(ac1.i(V2)+ac2.i(V3))
let Tmag=db(T)
let Tphase=180*cph(T)/pi
plot Tmag Tphase xlog
.endc"}
C {devices/lab_pin.sym} -60 -380 2 0 {name=p4 sig_type=std_logic lab=Vbp

}
C {devices/lab_pin.sym} -60 -290 2 0 {name=p6 sig_type=std_logic lab=Vbn

}
C {devices/lab_pin.sym} -60 -320 2 0 {name=p9 sig_type=std_logic lab=Vcn

}
C {devices/lab_pin.sym} -60 -350 2 0 {name=p11 sig_type=std_logic lab=Vcp

}
C {madvlsi/vdd.sym} -100 -420 0 0 {name=l7 lab=VDD}
C {madvlsi/gnd.sym} -100 -250 0 0 {name=l8 lab=GND}
C {madvlsi/isource.sym} -310 -370 2 0 {name=Ib
value=1u}
C {madvlsi/gnd.sym} -310 -340 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -310 -400 1 0 {name=p14 sig_type=std_logic lab=Vbn

}
C {/home/madvlsi/Documents/mp3/fc_diffamp_lds.sym} -20 -280 0 0 {name=X1}
C {/home/madvlsi/Documents/mp3/biasgen_lds.sym} -130 -240 0 0 {name=X2}
C {madvlsi/capacitor.sym} 270 -320 0 0 {name=C1
value=1p
m=1}
C {madvlsi/gnd.sym} 270 -290 0 0 {name=l10 lab=GND}
C {madvlsi/isource.sym} -310 -200 2 0 {name=Ib1
value=1u}
C {madvlsi/gnd.sym} -310 -170 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} -310 -230 1 0 {name=p3 sig_type=std_logic lab=VbnQ

}
C {madvlsi/gnd.sym} 140 -540 0 0 {name=l6 lab=GND}
C {madvlsi/vdd.sym} 140 -680 0 0 {name=l12 lab=VDD}
C {devices/lab_pin.sym} 70 -640 0 0 {name=p15 sig_type=std_logic lab=V1
}
C {devices/lab_pin.sym} 110 -680 0 0 {name=p17 sig_type=std_logic lab=VbpQ

}
C {devices/lab_pin.sym} 110 -540 0 0 {name=p18 sig_type=std_logic lab=VbnQ
}
C {devices/lab_pin.sym} 170 -630 1 0 {name=p19 sig_type=std_logic lab=VcpQ

}
C {devices/lab_pin.sym} 170 -590 3 0 {name=p20 sig_type=std_logic lab=VcnQ

}
C {devices/lab_pin.sym} 300 -610 2 0 {name=p21 sig_type=std_logic lab=VoutQ
}
C {madvlsi/vdd.sym} -100 -680 0 0 {name=l13 lab=VDD}
C {madvlsi/gnd.sym} -100 -510 0 0 {name=l14 lab=GND}
C {/home/madvlsi/Documents/mp3/fc_diffamp_lds.sym} -20 -540 0 0 {name=X3}
C {/home/madvlsi/Documents/mp3/biasgen_lds.sym} -130 -500 0 0 {name=X4}
C {madvlsi/capacitor.sym} 290 -580 0 0 {name=C2
value=2p
m=1}
C {madvlsi/gnd.sym} 290 -550 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} -60 -550 2 0 {name=p16 sig_type=std_logic lab=VbnQ
}
C {devices/lab_pin.sym} -60 -580 2 0 {name=p22 sig_type=std_logic lab=VcnQ

}
C {devices/lab_pin.sym} -60 -610 2 0 {name=p23 sig_type=std_logic lab=VcpQ

}
C {devices/lab_pin.sym} -60 -640 2 0 {name=p24 sig_type=std_logic lab=VbpQ

}
C {madvlsi/vsource.sym} 80 -160 3 0 {name=V2
value="0 AC \{1-B\}"}
C {madvlsi/vsource.sym} 200 -160 1 0 {name=V3
value="0 AC \{B\}"}
C {madvlsi/depvsrc.sym} 110 -130 0 0 {name=B1
func=v(VoutQ)}
C {madvlsi/gnd.sym} 110 -100 0 0 {name=l16 lab=GND}
