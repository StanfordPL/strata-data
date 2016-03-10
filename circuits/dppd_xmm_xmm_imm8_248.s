  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  punpckhqdq %xmm1, %xmm9            #  2     0x5   5      OPC=punpckhqdq_xmm_xmm    
  vpbroadcastw %xmm9, %xmm0          #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm  
  vmovddup %ymm0, %ymm8              #  4     0xf   4      OPC=vmovddup_ymm_ymm      
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
