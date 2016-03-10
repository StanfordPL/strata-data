  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %cl, %edx  #  1     0    3      OPC=movsbl_r32_r8  
  movsbq %bl, %r11  #  2     0x3  4      OPC=movsbq_r64_r8  
  orw %r11w, %dx    #  3     0x7  4      OPC=orw_r16_r16    
  xchgb %bl, %dl    #  4     0xb  2      OPC=xchgb_r8_r8    
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
