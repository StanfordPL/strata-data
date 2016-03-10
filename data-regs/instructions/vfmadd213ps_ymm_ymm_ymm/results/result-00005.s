  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vfmadd132ps %ymm1, %ymm3, %ymm2       #  1     0     5      OPC=vfmadd132ps_ymm_ymm_ymm  
  vmovupd %ymm2, %ymm3                  #  2     0x5   4      OPC=vmovupd_ymm_ymm          
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label              
  retq                                  #  5     0x13  1      OPC=retq                     
                                                                                           
.size target, .-target
