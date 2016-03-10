  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwq %cx, %rdx   #  1     0    4      OPC=movzwq_r64_r16  
  cmovel %edx, %ebx  #  2     0x4  3      OPC=cmovel_r32_r32  
  cmovbw %cx, %bx    #  3     0x7  4      OPC=cmovbw_r16_r16  
  retq               #  4     0xb  1      OPC=retq            
                                                              
.size target, .-target
