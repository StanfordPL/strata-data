  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movl %ecx, %eax    #  1     0    2      OPC=movl_r32_r32    
  seto %ch           #  2     0x2  3      OPC=seto_rh         
  decb %ch           #  3     0x5  2      OPC=decb_rh         
  cmovzl %eax, %ebx  #  4     0x7  3      OPC=cmovzl_r32_r32  
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
