  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorl %eax, %eax  #  1     0    2      OPC=xorl_r32_r32  
  notl %ebx        #  2     0x2  2      OPC=notl_r32      
  callq .set_cf    #  3     0x4  5      OPC=callq_label   
  adcl %eax, %ebx  #  4     0x9  2      OPC=adcl_r32_r32  
  cmc              #  5     0xb  1      OPC=cmc           
  retq             #  6     0xc  1      OPC=retq          
                                                          
.size target, .-target
