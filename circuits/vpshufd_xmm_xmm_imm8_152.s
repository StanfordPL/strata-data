  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label             
  vzeroall                           #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm3     #  3     0x8   5      OPC=callq_label             
  vunpckhps %xmm4, %xmm3, %xmm2      #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpcklps %xmm2, %xmm3, %xmm8      #  5     0x11  4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm3, %xmm8, %xmm9     #  6     0x15  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  7     0x19  5      OPC=callq_label             
  retq                               #  8     0x1e  1      OPC=retq                    
                                                                                       
.size target, .-target
