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
C {madvlsi/gnd.sym} 140 -280 0 0 {name=l1 lab=GND}
C {madvlsi/vdd.sym} 140 -420 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 70 -380 0 0 {name=p2 sig_type=std_logic lab=V1
}
C {devices/lab_pin.sym} 70 -320 0 0 {name=p8 sig_type=std_logic lab=V2
}
C {devices/lab_pin.sym} 110 -420 0 0 {name=p5 sig_type=std_logic lab=Vbp

}
C {devices/lab_pin.sym} 110 -280 0 0 {name=p7 sig_type=std_logic lab=Vbn

}
C {devices/lab_pin.sym} 170 -370 1 0 {name=p10 sig_type=std_logic lab=Vcp

}
C {devices/lab_pin.sym} 170 -330 3 0 {name=p12 sig_type=std_logic lab=Vcn

}
C {devices/lab_pin.sym} 240 -350 2 0 {name=p13 sig_type=std_logic lab=Vout
}
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
C {/home/madvlsi/Documents/mp3/fc_diffamp_lds.sym} -20 -280 0 0 {name=X1}
C {/home/madvlsi/Documents/mp3/biasgen_lds.sym} -130 -250 0 0 {name=X2}
