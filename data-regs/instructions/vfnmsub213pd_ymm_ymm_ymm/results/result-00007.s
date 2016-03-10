  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vfnmsub132pd %ymm1, %ymm3, %ymm2    #  1     0     5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r8_r9      #  2     0x5   5      OPC=callq_label               
  callq .move_064_128_r8_r9_xmm2      #  3     0xa   5      OPC=callq_label               
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xf   5      OPC=callq_label               
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x14  5      OPC=callq_label               
  retq                                #  6     0x19  1      OPC=retq                      
                                                                                          
.size target, .-target
