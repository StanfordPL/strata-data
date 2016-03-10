  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorw %di, %di    #  1     0    4      OPC=xorw_r16_r16  
  movb %bl, %bl    #  2     0x4  2      OPC=movb_r8_r8    
  shlb $0x1, %dil  #  3     0x6  3      OPC=shlb_r8_one   
  adcq %rbx, %rbx  #  4     0x9  3      OPC=adcq_r64_r64  
  retq             #  5     0xc  1      OPC=retq          
                                                          
.size target, .-target
