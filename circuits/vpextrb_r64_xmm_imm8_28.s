  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode              
.target:                              #        0    0      OPC=<label>         
  movdqu %xmm1, %xmm1                 #  1     0    4      OPC=movdqu_xmm_xmm  
  callq .move_byte_12_of_ymm1_to_r9b  #  2     0x4  5      OPC=callq_label     
  movzbq %r9b, %rbx                   #  3     0x9  4      OPC=movzbq_r64_r8   
  retq                                #  4     0xd  1      OPC=retq            
                                                                               
.size target, .-target
