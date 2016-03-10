  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnl %ecx, %ebx, %edx  #  1     0    5      OPC=andnl_r32_r32_r32  
  xorl %edx, %ecx         #  2     0x5  2      OPC=xorl_r32_r32       
  clc                     #  3     0x7  1      OPC=clc                
  retq                    #  4     0x8  1      OPC=retq               
                                                                      
.size target, .-target
