  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vfmadd132pd %ymm1, %ymm3, %ymm2     #  1     0     5      OPC=vfmadd132pd_ymm_ymm_ymm  
  vminpd %ymm2, %ymm2, %ymm1          #  2     0x5   4      OPC=vminpd_ymm_ymm_ymm       
  callq .move_byte_14_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label              
  callq .move_r9b_to_byte_14_of_ymm1  #  4     0xe   5      OPC=callq_label              
  retq                                #  5     0x13  1      OPC=retq                     
                                                                                         
.size target, .-target
