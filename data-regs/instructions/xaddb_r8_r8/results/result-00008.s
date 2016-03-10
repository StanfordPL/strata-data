  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  clc                #  1     0     1      OPC=clc             
  movzbq %cl, %r9    #  2     0x1   4      OPC=movzbq_r64_r8   
  movsbl %bl, %ecx   #  3     0x5   3      OPC=movsbl_r32_r8   
  movslq %r9d, %rsi  #  4     0x8   3      OPC=movslq_r64_r32  
  adcq %r9, %r9      #  5     0xb   3      OPC=adcq_r64_r64    
  adcb %cl, %sil     #  6     0xe   3      OPC=adcb_r8_r8      
  movzwl %si, %ebx   #  7     0x11  3      OPC=movzwl_r32_r16  
  retq               #  8     0x14  1      OPC=retq            
                                                               
.size target, .-target
