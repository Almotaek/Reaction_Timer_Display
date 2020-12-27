
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];
set_property  PACKAGE_PIN E3 [get_ports clk_100MHz]
set_property  IOSTANDARD LVCMOS33  [get_ports clk_100MHz]

##mode
set_property PACKAGE_PIN J15 [get_ports {mode}]
 set_property IOSTANDARD LVCMOS33 [get_ports {mode}]

##buttons 
set_property PACKAGE_PIN N17 [get_ports {enter}]
 set_property IOSTANDARD LVCMOS33 [get_ports {enter}]
 
 set_property PACKAGE_PIN M17 [get_ports {stop}]
  set_property IOSTANDARD LVCMOS33 [get_ports {stop}]
  
  set_property PACKAGE_PIN P17 [get_ports {reset}]
   set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
 
 ##LEDs
   set_property PACKAGE_PIN N15 [get_ports {rgb_r}]
  set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r}]
  
     set_property PACKAGE_PIN M16 [get_ports {rgb_g}]
 set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g}]
 
      set_property PACKAGE_PIN R12 [get_ports {rgb_b}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b}]

      set_property PACKAGE_PIN H15 [get_ports {point}]
set_property IOSTANDARD LVCMOS33 [get_ports {point}]

                     set_property   PACKAGE_PIN J17   [get_ports {an[7]}]
                      set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]
                       set_property   PACKAGE_PIN J18   [get_ports {an[6]}]
                          set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
                            set_property   PACKAGE_PIN T9   [get_ports {an[5]}]
                             set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
                                set_property  PACKAGE_PIN J14    [get_ports {an[4]}]
                                   set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
                                          set_property  PACKAGE_PIN P14   [get_ports {an[3]}]
                                           set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
                                 set_property   PACKAGE_PIN T14  [get_ports {an[2]}]
                                  set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
                                  set_property   PACKAGE_PIN K2   [get_ports {an[1]}]
                                      set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
                                                                   set_property   PACKAGE_PIN U13   [get_ports {an[0]}]
                                                                        set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]   
     set_property   PACKAGE_PIN T10    [get_ports {segs_1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[6]}] 
    set_property   PACKAGE_PIN R10   [get_ports {segs_1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[5]}]
  set_property   PACKAGE_PIN K16   [get_ports {segs_1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[4]}] 
  set_property   PACKAGE_PIN K13    [get_ports {segs_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[3]}] 
  set_property   PACKAGE_PIN P15   [get_ports {segs_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[2]}] 
  set_property   PACKAGE_PIN T11    [get_ports {segs_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[1]}] 
 set_property   PACKAGE_PIN L18     [get_ports {segs_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {segs_1[0]}] 