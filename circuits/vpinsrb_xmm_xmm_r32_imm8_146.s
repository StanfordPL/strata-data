  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                 
.target:                             #        0    0      OPC=<label>            
  movb %bl, %r9b                     #  1     0    3      OPC=movb_r8_r8         
  vorps %xmm2, %xmm2, %xmm1          #  2     0x3  4      OPC=vorps_xmm_xmm_xmm  
  callq .move_r9b_to_byte_2_of_ymm1  #  3     0x7  5      OPC=callq_label        
  retq                               #  4     0xc  1      OPC=retq               
                                                                                 
.size target, .-target
