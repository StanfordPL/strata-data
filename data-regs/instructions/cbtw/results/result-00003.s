  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movsbl %al, %r9d    #  1     0    4      OPC=movsbl_r32_r8  
  movsbl %r9b, %r12d  #  2     0x4  4      OPC=movsbl_r32_r8  
  movsbl %r12b, %eax  #  3     0x8  4      OPC=movsbl_r32_r8  
  retq                #  4     0xc  1      OPC=retq           
                                                              
.size target, .-target
