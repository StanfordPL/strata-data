  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovnaew %cx, %bx  #  1     0    4      OPC=cmovnaew_r16_r16  
  movb %bl, %bl      #  2     0x4  2      OPC=movb_r8_r8        
  retq               #  3     0x6  1      OPC=retq              
                                                                
.size target, .-target