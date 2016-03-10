  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  phaddd %xmm3, %xmm2                   #  1     0     5      OPC=phaddd_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label     
  andps %xmm3, %xmm3                    #  3     0xa   3      OPC=andps_xmm_xmm   
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xd   5      OPC=callq_label     
  phaddd %xmm13, %xmm11                 #  5     0x12  6      OPC=phaddd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x18  5      OPC=callq_label     
  retq                                  #  7     0x1d  1      OPC=retq            
                                                                                  
.size target, .-target
