  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode              
.target:                              #        0    0      OPC=<label>         
  movslq %ebx, %r8                    #  1     0    3      OPC=movslq_r64_r32  
  callq .move_r8b_to_byte_11_of_ymm1  #  2     0x3  5      OPC=callq_label     
  retq                                #  3     0x8  1      OPC=retq            
                                                                               
.size target, .-target
