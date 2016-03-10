  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8      
  movswq %ax, %r9  #  2     0x2  4      OPC=movswq_r64_r16  
  orw %r9w, %ax    #  3     0x6  4      OPC=orw_r16_r16     
  andb %ah, %bl    #  4     0xa  2      OPC=andb_r8_rh      
  xchgb %ah, %bl   #  5     0xc  2      OPC=xchgb_r8_rh     
  retq             #  6     0xe  1      OPC=retq            
                                                            
.size target, .-target
