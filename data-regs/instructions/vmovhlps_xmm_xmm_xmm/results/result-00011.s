  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm3, %xmm1     #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  xorb %r9b, %r9b                     #  2     0x4   3      OPC=xorb_r8_r8               
  callq .move_r9b_to_byte_19_of_ymm1  #  3     0x7   5      OPC=callq_label              
  callq .move_r9b_to_byte_31_of_ymm1  #  4     0xc   5      OPC=callq_label              
  retq                                #  5     0x11  1      OPC=retq                     
                                                                                         
.size target, .-target
