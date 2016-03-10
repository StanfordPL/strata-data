  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  xorq %r8, %r8                      #  1     0    3      OPC=xorq_r64_r64   
  xorps %xmm1, %xmm1                 #  2     0x3  3      OPC=xorps_xmm_xmm  
  callq .move_r8b_to_byte_8_of_ymm1  #  3     0x6  5      OPC=callq_label    
  retq                               #  4     0xb  1      OPC=retq           
                                                                             
.size target, .-target
