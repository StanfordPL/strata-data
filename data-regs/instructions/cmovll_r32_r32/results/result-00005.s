  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movslq %ecx, %rcx  #  1     0    3      OPC=movslq_r64_r32  
  setnl %r9b         #  2     0x3  4      OPC=setnl_r8        
  xaddb %r9b, %r9b   #  3     0x7  4      OPC=xaddb_r8_r8     
  cmovzl %ecx, %ebx  #  4     0xb  3      OPC=cmovzl_r32_r32  
  retq               #  5     0xe  1      OPC=retq            
                                                              
.size target, .-target
