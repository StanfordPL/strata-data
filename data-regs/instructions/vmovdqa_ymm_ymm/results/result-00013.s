  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm1          #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_byte_17_of_ymm1_to_r9b  #  2     0x4  5      OPC=callq_label         
  callq .move_r9b_to_byte_17_of_ymm1  #  3     0x9  5      OPC=callq_label         
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
