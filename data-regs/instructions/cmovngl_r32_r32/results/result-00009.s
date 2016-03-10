  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovzl %ecx, %ebx    #  1     0    3      OPC=cmovzl_r32_r32    
  cmovngel %ecx, %ebx  #  2     0x3  3      OPC=cmovngel_r32_r32  
  cmovnzl %ebx, %ebx   #  3     0x6  3      OPC=cmovnzl_r32_r32   
  retq                 #  4     0x9  1      OPC=retq              
                                                                  
.size target, .-target
