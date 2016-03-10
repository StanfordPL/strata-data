  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label         
  vzeroall                             #  2     0x5   3      OPC=vzeroall            
  callq .move_064_128_r8_r9_xmm1       #  3     0x8   5      OPC=callq_label         
  callq .move_byte_16_of_ymm1_to_r8b   #  4     0xd   5      OPC=callq_label         
  callq .move_r8b_to_byte_15_of_ymm1   #  5     0x12  5      OPC=callq_label         
  callq .move_128_64_xmm1_xmm12_xmm13  #  6     0x17  5      OPC=callq_label         
  vmulps %ymm0, %ymm5, %ymm13          #  7     0x1c  4      OPC=vmulps_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  8     0x20  5      OPC=callq_label         
  retq                                 #  9     0x25  1      OPC=retq                
                                                                                     
.size target, .-target
