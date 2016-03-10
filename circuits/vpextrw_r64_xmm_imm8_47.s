  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64  
  bswap %ebx                          #  2     0x3   2      OPC=bswap_r32     
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x5   5      OPC=callq_label   
  callq .move_byte_15_of_ymm1_to_r9b  #  4     0xa   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx      #  5     0xf   5      OPC=callq_label   
  retq                                #  6     0x14  1      OPC=retq          
                                                                              
.size target, .-target
