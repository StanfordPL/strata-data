  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vpbroadcastw %xmm2, %ymm0            #  1     0     5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa   5      OPC=callq_label           
  movss %xmm0, %xmm1                   #  4     0xf   4      OPC=movss_xmm_xmm         
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
