  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnzl %ecx, %ebx  #  1     0    3      OPC=cmovnzl_r32_r32  
  movb %bl, %bl       #  2     0x3  2      OPC=movb_r8_r8       
  retq                #  3     0x5  1      OPC=retq             
                                                                
.size target, .-target
