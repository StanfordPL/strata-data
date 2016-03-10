  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9     #  1     0     5      OPC=callq_label    
  subw %r9w, %r9w                    #  2     0x5   4      OPC=subw_r16_r16   
  callq .move_r9b_to_byte_2_of_ymm1  #  3     0x9   5      OPC=callq_label    
  pandn %xmm1, %xmm1                 #  4     0xe   4      OPC=pandn_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq           
                                                                              
.size target, .-target
