  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vminpd %xmm2, %xmm2, %xmm3           #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm      
  punpckhdq %xmm2, %xmm3               #  3     0x9   4      OPC=punpckhdq_xmm_xmm       
  vpunpckldq %xmm3, %xmm10, %xmm1      #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movhlps %xmm2, %xmm1                 #  5     0x11  3      OPC=movhlps_xmm_xmm         
  retq                                 #  6     0x14  1      OPC=retq                    
                                                                                         
.size target, .-target
