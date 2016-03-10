  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %cx, %eax   #  1     0    3      OPC=movzwl_r32_r16  
  cltq               #  2     0x3  2      OPC=cltq            
  xchgw %ax, %ax     #  3     0x5  2      OPC=xchgw_r16_ax    
  cmovel %eax, %ebx  #  4     0x7  3      OPC=cmovel_r32_r32  
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
