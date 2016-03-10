  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %bh      #  1     0    2      OPC=movb_rh_r8      
  cmpxchgb %cl, %bh  #  2     0x2  3      OPC=cmpxchgb_rh_r8  
  movsbl %bh, %eax   #  3     0x5  3      OPC=movsbl_r32_rh   
  xchgw %ax, %bx     #  4     0x8  2      OPC=xchgw_r16_ax    
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
