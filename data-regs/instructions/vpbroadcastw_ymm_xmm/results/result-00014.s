  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9       #  1     0     5      OPC=callq_label           
  vpbroadcastw %xmm2, %xmm8            #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm  
  vmovq %xmm8, %r9                     #  3     0xa   5      OPC=vmovq_r64_xmm         
  callq .move_064_128_r8_r9_xmm1       #  4     0xf   5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm10_xmm11  #  5     0x14  5      OPC=callq_label           
  vpbroadcastd %xmm11, %ymm1           #  6     0x19  5      OPC=vpbroadcastd_ymm_xmm  
  retq                                 #  7     0x1e  1      OPC=retq                  
                                                                                       
.size target, .-target
