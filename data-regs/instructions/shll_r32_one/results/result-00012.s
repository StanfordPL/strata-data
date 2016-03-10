  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode            
.target:                  #        0    0      OPC=<label>       
  clc                     #  1     0    1      OPC=clc           
  rcll $0x1, %ebx         #  2     0x1  2      OPC=rcll_r32_one  
  callq .set_szp_for_ebx  #  3     0x3  5      OPC=callq_label   
  retq                    #  4     0x8  1      OPC=retq          
                                                                 
.size target, .-target
