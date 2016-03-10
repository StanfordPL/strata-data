  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %cl, %ah      #  1     0    2      OPC=movb_rh_r8      
  orw %ax, %ax       #  2     0x2  3      OPC=orw_r16_r16     
  cmpxchgb %ah, %bh  #  3     0x5  3      OPC=cmpxchgb_rh_rh  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
