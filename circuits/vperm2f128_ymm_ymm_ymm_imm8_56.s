  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vminpd %ymm3, %ymm3, %ymm1         #  1     0     4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_byte_3_of_ymm1_to_r8b  #  2     0x4   5      OPC=callq_label         
  callq .move_r8b_to_byte_4_of_ymm1  #  3     0x9   5      OPC=callq_label         
  andnpd %xmm1, %xmm1                #  4     0xe   4      OPC=andnpd_xmm_xmm      
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
