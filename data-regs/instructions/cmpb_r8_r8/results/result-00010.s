  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  negq %rax        #  2     0x2  3      OPC=negq_r64      
  xorb %cl, %ah    #  3     0x5  2      OPC=xorb_rh_r8    
  sbbb %ah, %bl    #  4     0x7  2      OPC=sbbb_r8_rh    
  retq             #  5     0x9  1      OPC=retq          
                                                          
.size target, .-target
