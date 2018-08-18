set_property PFM_NAME "keitetsu:pynq-z1:pynq-z1:1.0" [get_files [get_property FILE_NAME [get_bd_designs]]]

set_property PFM.CLOCK { \
    clk_out1 {id "0" is_default "true" proc_sys_reset "proc_sys_reset_0" } \
    clk_out2 {id "1" is_default "false" proc_sys_reset "proc_sys_reset_1" } \
    clk_out3 {id "2" is_default "false" proc_sys_reset "proc_sys_reset_2" } \
    clk_out4 {id "3" is_default "false" proc_sys_reset "proc_sys_reset_3" } \
} [get_bd_cells /clk_wiz_0]

set_property PFM.AXI_PORT { \
    M_AXI_GP0 {memport "M_AXI_GP"} \
    M_AXI_GP1 {memport "M_AXI_GP"} \
    S_AXI_ACP {memport "S_AXI_ACP" sptag "ACP" memory "processing_system7_0 ACP_DDR_LOWOCM"} \
    S_AXI_HP0 {memport "S_AXI_HP" sptag "HP0" memory "processing_system7_0 HP0_DDR_LOWOCM"} \
    S_AXI_HP1 {memport "S_AXI_HP" sptag "HP1" memory "processing_system7_0 HP1_DDR_LOWOCM"} \
    S_AXI_HP2 {memport "S_AXI_HP" sptag "HP2" memory "processing_system7_0 HP2_DDR_LOWOCM"} \
    S_AXI_HP3 {memport "S_AXI_HP" sptag "HP3" memory "processing_system7_0 HP3_DDR_LOWOCM"} \
} [get_bd_cells /processing_system7_0]

set intVar []
for {set i 0} {$i < 16} {incr i} {
    lappend intVar In$i {}
}
set_property PFM.IRQ $intVar [get_bd_cells /xlconcat_0]

