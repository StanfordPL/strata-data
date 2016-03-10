  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovbl %ebx, %ecx   #  1     0    3      OPC=cmovbl_r32_r32   
  movb %ch, %ch       #  2     0x3  2      OPC=movb_rh_rh       
  cmovnzl %ecx, %ebx  #  3     0x5  3      OPC=cmovnzl_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
