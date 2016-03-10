  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovnbl %ecx, %ebx  #  1     0    3      OPC=cmovnbl_r32_r32  
  movb %bh, %bh       #  2     0x3  2      OPC=movb_rh_rh       
  retq                #  3     0x5  1      OPC=retq             
                                                                
.size target, .-target
