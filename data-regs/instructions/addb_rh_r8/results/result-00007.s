  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  movsbl %bl, %r11d  #  1     0     4      OPC=movsbl_r32_r8  
  movq %r11, %rbx    #  2     0x4   3      OPC=movq_r64_r64   
  incb %bl           #  3     0x7   2      OPC=incb_r8        
  decw %bx           #  4     0x9   3      OPC=decw_r16       
  xaddb %ah, %bl     #  5     0xc   3      OPC=xaddb_r8_rh    
  movb %bl, %ah      #  6     0xf   2      OPC=movb_rh_r8     
  retq               #  7     0x11  1      OPC=retq           
                                                              
.size target, .-target
