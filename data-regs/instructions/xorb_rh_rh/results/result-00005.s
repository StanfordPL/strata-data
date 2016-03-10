  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rdx, %rdx  #  1     0    3      OPC=xorq_r64_r64  
  adcb %ah, %dl    #  2     0x3  2      OPC=adcb_r8_rh    
  xchgb %dl, %bh   #  3     0x5  2      OPC=xchgb_rh_r8   
  xorb %dl, %ah    #  4     0x7  2      OPC=xorb_rh_r8    
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
