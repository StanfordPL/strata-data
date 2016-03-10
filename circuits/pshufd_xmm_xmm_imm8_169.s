  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vbroadcastss %xmm6, %ymm3                     #  2     0x5   5      OPC=vbroadcastss_ymm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11          #  3     0xa   5      OPC=callq_label           
  movss %xmm5, %xmm10                           #  4     0xf   5      OPC=movss_xmm_xmm         
  callq .move_64_128_xmm10_xmm11_xmm1           #  5     0x14  5      OPC=callq_label           
  retq                                          #  6     0x19  1      OPC=retq                  
                                                                                                
.size target, .-target
