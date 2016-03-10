  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_byte_11_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label        
  callq .move_byte_10_of_ymm1_to_r8b  #  2     0x5   5      OPC=callq_label        
  vmovmskpd %xmm1, %ebx               #  3     0xa   4      OPC=vmovmskpd_r32_xmm  
  callq .move_008_016_r8b_r9b_bx      #  4     0xe   5      OPC=callq_label        
  xchgb %bl, %r9b                     #  5     0x13  3      OPC=xchgb_r8_r8        
  xaddb %bl, %r8b                     #  6     0x16  4      OPC=xaddb_r8_r8        
  retq                                #  7     0x1a  1      OPC=retq               
                                                                                   
.size target, .-target
