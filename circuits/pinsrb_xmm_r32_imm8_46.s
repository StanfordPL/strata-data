  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode              
.target:                              #        0    0      OPC=<label>         
  movswq %bx, %r8                     #  1     0    4      OPC=movswq_r64_r16  
  orq %r8, %r8                        #  2     0x4  3      OPC=orq_r64_r64     
  callq .move_r8b_to_byte_14_of_ymm1  #  3     0x7  5      OPC=callq_label     
  retq                                #  4     0xc  1      OPC=retq            
                                                                               
.size target, .-target
