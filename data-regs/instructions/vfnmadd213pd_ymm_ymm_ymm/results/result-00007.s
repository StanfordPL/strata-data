  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label               
  callq .move_064_128_r12_r13_xmm1  #  2     0x5   5      OPC=callq_label               
  vfnmadd132pd %ymm1, %ymm3, %ymm2  #  3     0xa   5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  vminps %ymm2, %ymm2, %ymm1        #  4     0xf   4      OPC=vminps_ymm_ymm_ymm        
  retq                              #  5     0x13  1      OPC=retq                      
                                                                                        
.size target, .-target
