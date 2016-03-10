  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movb %bh, %cl    #  1     0    2      OPC=movb_r8_rh      
  orb %cl, %bh     #  2     0x2  2      OPC=orb_rh_r8       
  cmpb %bh, %al    #  3     0x4  2      OPC=cmpb_r8_rh      
  movb %bh, %al    #  4     0x6  2      OPC=movb_r8_rh      
  cmovew %cx, %bx  #  5     0x8  4      OPC=cmovew_r16_r16  
  retq             #  6     0xc  1      OPC=retq            
                                                            
.size target, .-target
