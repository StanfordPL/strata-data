  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm5          #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  vmovdqu %xmm2, %xmm3               #  2     0x5   4      OPC=vmovdqu_xmm_xmm         
  vmovaps %xmm2, %xmm6               #  3     0x9   4      OPC=vmovaps_xmm_xmm         
  vpunpckhdq %xmm5, %xmm3, %xmm2     #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  5     0x11  5      OPC=callq_label             
  vmovss %xmm9, %xmm6, %xmm5         #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm      
  vmaxsd %xmm5, %xmm5, %xmm8         #  7     0x1b  4      OPC=vmaxsd_xmm_xmm_xmm      
  callq .move_64_128_xmm8_xmm9_xmm1  #  8     0x1f  5      OPC=callq_label             
  retq                               #  9     0x24  1      OPC=retq                    
                                                                                       
.size target, .-target
