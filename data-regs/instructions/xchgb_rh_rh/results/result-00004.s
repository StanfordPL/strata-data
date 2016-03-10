  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %edi  #  1     0    3      OPC=movzbl_r32_rh  
  clc               #  2     0x3  1      OPC=clc            
  incq %rdi         #  3     0x4  3      OPC=incq_r64       
  setnp %al         #  4     0x7  3      OPC=setnp_r8       
  setnc %bl         #  5     0xa  3      OPC=setnc_r8       
  xchgw %ax, %bx    #  6     0xd  2      OPC=xchgw_r16_ax   
  retq              #  7     0xf  1      OPC=retq           
                                                            
.size target, .-target
