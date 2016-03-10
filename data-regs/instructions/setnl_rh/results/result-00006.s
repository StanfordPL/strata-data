  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  setge %dh        #  1     0    3      OPC=setge_rh      
  xorq %rax, %rax  #  2     0x3  3      OPC=xorq_r64_r64  
  xorb %al, %al    #  3     0x6  2      OPC=xorb_r8_r8    
  xorb %al, %ah    #  4     0x8  2      OPC=xorb_rh_r8    
  adcb %dh, %ah    #  5     0xa  2      OPC=adcb_rh_rh    
  retq             #  6     0xc  1      OPC=retq          
                                                          
.size target, .-target
