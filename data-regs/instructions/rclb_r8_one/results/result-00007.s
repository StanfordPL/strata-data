  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  movb %bl, %bh  #  1     0    2      OPC=movb_rh_r8    
  adcw %bx, %bx  #  2     0x2  3      OPC=adcw_r16_r16  
  retq           #  3     0x5  1      OPC=retq          
                                                        
.size target, .-target
