  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %bl, %bh     #  1     0    2      OPC=movb_rh_r8     
  movsbl %cl, %eax  #  2     0x2  3      OPC=movsbl_r32_r8  
  orw %ax, %bx      #  3     0x5  3      OPC=orw_r16_r16    
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
