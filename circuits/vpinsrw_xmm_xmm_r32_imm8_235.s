  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vorps %xmm2, %xmm2, %xmm1          #  1     0     4      OPC=vorps_xmm_xmm_xmm  
  movsbw %bl, %r9w                   #  2     0x4   5      OPC=movsbw_r16_r8      
  callq .move_r9b_to_byte_6_of_ymm1  #  3     0x9   5      OPC=callq_label        
  callq .move_016_008_bx_r8b_r9b     #  4     0xe   5      OPC=callq_label        
  callq .move_r9b_to_byte_7_of_ymm1  #  5     0x13  5      OPC=callq_label        
  retq                               #  6     0x18  1      OPC=retq               
                                                                                  
.size target, .-target
