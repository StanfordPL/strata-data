  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_byte_8_of_ymm1_to_r9b   #  1     0     5      OPC=callq_label   
  callq .move_r9b_to_byte_10_of_ymm1  #  2     0x5   5      OPC=callq_label   
  callq .move_128_064_xmm1_r12_r13    #  3     0xa   5      OPC=callq_label   
  movq %r12, %rbx                     #  4     0xf   3      OPC=movq_r64_r64  
  retq                                #  5     0x12  1      OPC=retq          
                                                                              
.size target, .-target
