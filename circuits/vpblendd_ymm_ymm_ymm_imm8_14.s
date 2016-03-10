  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movss %xmm2, %xmm3                #  1     0     4      OPC=movss_xmm_xmm    
  vmovaps %ymm2, %ymm1              #  2     0x4   4      OPC=vmovaps_ymm_ymm  
  callq .move_128_064_xmm3_r10_r11  #  3     0x8   5      OPC=callq_label      
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label      
  retq                              #  5     0x12  1      OPC=retq             
                                                                               
.size target, .-target
