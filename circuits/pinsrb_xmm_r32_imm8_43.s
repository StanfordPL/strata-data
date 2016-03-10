  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  xorq %r12, %r12                     #  1     0     3      OPC=xorq_r64_r64    
  callq .move_byte_13_of_ymm1_to_r9b  #  2     0x3   5      OPC=callq_label     
  cmovzl %ebx, %r9d                   #  3     0x8   4      OPC=cmovzl_r32_r32  
  callq .move_r9b_to_byte_11_of_ymm1  #  4     0xc   5      OPC=callq_label     
  retq                                #  5     0x11  1      OPC=retq            
                                                                                
.size target, .-target
