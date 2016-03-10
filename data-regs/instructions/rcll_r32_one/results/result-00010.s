  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movslq %ebx, %r8   #  1     0     3      OPC=movslq_r64_r32  
  adcl %r8d, %ebx    #  2     0x3   3      OPC=adcl_r32_r32    
  movslq %r8d, %r11  #  3     0x6   3      OPC=movslq_r64_r32  
  callq .clear_cf    #  4     0x9   5      OPC=callq_label     
  adcl %r11d, %r11d  #  5     0xe   3      OPC=adcl_r32_r32    
  retq               #  6     0x11  1      OPC=retq            
                                                               
.size target, .-target
