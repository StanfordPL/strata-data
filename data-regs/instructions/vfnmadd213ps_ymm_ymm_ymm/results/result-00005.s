  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmadd231ps %ymm1, %ymm2, %ymm3  #  1     0     5      OPC=vfnmadd231ps_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label               
  vmaxps %ymm3, %ymm3, %ymm1        #  3     0xa   4      OPC=vmaxps_ymm_ymm_ymm        
  callq .move_064_128_r8_r9_xmm1    #  4     0xe   5      OPC=callq_label               
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
