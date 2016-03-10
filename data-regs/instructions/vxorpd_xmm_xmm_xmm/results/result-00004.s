  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vxorps %xmm3, %xmm2, %xmm14        #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm    
  vrcpss %xmm3, %xmm9, %xmm3         #  3     0x9   4      OPC=vrcpss_xmm_xmm_xmm    
  vmovhlps %xmm3, %xmm8, %xmm3       #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm  
  vorpd %xmm14, %xmm3, %xmm1         #  5     0x11  5      OPC=vorpd_xmm_xmm_xmm     
  retq                               #  6     0x16  1      OPC=retq                  
                                                                                     
.size target, .-target
