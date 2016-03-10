  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %bh, %edx   #  1     0    3      OPC=movzbl_r32_rh   
  cmpxchgb %dl, %cl  #  2     0x3  3      OPC=cmpxchgb_r8_r8  
  movb %cl, %cl      #  3     0x6  2      OPC=movb_r8_r8      
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
