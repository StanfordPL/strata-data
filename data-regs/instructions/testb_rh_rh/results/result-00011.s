  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %bh, %bx  #  1     0    4      OPC=movzbw_r16_rh  
  xorb %bh, %ah    #  2     0x4  2      OPC=xorb_rh_rh     
  testb %ah, %bl   #  3     0x6  2      OPC=testb_r8_rh    
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
