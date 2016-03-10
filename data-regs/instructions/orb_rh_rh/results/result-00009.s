  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %ebp, %ebp  #  1     0    2      OPC=xorl_r32_r32  
  setng %cl        #  2     0x2  3      OPC=setng_r8      
  xchgb %bh, %cl   #  3     0x5  2      OPC=xchgb_r8_rh   
  orb %cl, %ah     #  4     0x7  2      OPC=orb_rh_r8     
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
