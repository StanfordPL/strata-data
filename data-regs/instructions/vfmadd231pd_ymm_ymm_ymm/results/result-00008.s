  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                       
.target:                              #        0    0      OPC=<label>                  
  vfmadd213pd %ymm1, %ymm2, %ymm3     #  1     0    5      OPC=vfmadd213pd_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x5  5      OPC=callq_label              
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0xa  5      OPC=callq_label              
  retq                                #  4     0xf  1      OPC=retq                     
                                                                                        
.size target, .-target
