  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movzbl %ah, %esi    #  1     0    3      OPC=movzbl_r32_rh  
  movsbl %sil, %r12d  #  2     0x3  4      OPC=movsbl_r32_r8  
  movl %esi, %ebx     #  3     0x7  2      OPC=movl_r32_r32   
  xchgl %r12d, %ebx   #  4     0x9  3      OPC=xchgl_r32_r32  
  retq                #  5     0xc  1      OPC=retq           
                                                              
.size target, .-target
