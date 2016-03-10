  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setnge %al         #  1     0    3      OPC=setnge_r8       
  shlb $0x1, %al     #  2     0x3  2      OPC=shlb_r8_one     
  cmovpl %ecx, %ebx  #  3     0x5  3      OPC=cmovpl_r32_r32  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
