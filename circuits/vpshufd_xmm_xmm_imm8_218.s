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
  callq .move_064_128_r8_r9_xmm2     #  3     0x8   5      OPC=callq_label             
  vminpd %xmm2, %xmm2, %xmm1         #  4     0xd   4      OPC=vminpd_xmm_xmm_xmm      
  vpunpckhdq %ymm2, %ymm1, %ymm8     #  5     0x11  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm2, %ymm9     #  6     0x15  4      OPC=vpunpckldq_ymm_ymm_ymm  
  punpckhdq %xmm8, %xmm9             #  7     0x19  5      OPC=punpckhdq_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1  #  8     0x1e  5      OPC=callq_label             
  callq .move_r9b_to_byte_0_of_ymm1  #  9     0x23  5      OPC=callq_label             
  retq                               #  10    0x28  1      OPC=retq                    
                                                                                       
.size target, .-target
