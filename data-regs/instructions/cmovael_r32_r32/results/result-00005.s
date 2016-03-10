  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movl %ecx, %r12d    #  1     0    3      OPC=movl_r32_r32    
  cmc                 #  2     0x3  1      OPC=cmc             
  cmovbl %r12d, %ebx  #  3     0x4  4      OPC=cmovbl_r32_r32  
  retq                #  4     0x8  1      OPC=retq            
                                                               
.size target, .-target
