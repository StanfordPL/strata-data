  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  setnge %ah           #  1     0    3      OPC=setnge_rh        
  popcntl %ecx, %r12d  #  2     0x3  5      OPC=popcntl_r32_r32  
  decb %ah             #  3     0x8  2      OPC=decb_rh          
  cmovbel %ecx, %ebx   #  4     0xa  3      OPC=cmovbel_r32_r32  
  retq                 #  5     0xd  1      OPC=retq             
                                                                 
.size target, .-target
