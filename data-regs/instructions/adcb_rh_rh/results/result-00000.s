  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movzbl %ah, %eax  #  1     0     3      OPC=movzbl_r32_rh   
  movzwq %ax, %r8   #  2     0x3   4      OPC=movzwq_r64_r16  
  movzbw %r8b, %cx  #  3     0x7   5      OPC=movzbw_r16_r8   
  adcb %bh, %cl     #  4     0xc   2      OPC=adcb_r8_rh      
  movb %cl, %ah     #  5     0xe   2      OPC=movb_rh_r8      
  retq              #  6     0x10  1      OPC=retq            
                                                              
.size target, .-target
