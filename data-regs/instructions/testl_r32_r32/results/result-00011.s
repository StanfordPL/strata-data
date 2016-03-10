  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnl %ebx, %ecx, %edi  #  1     0    5      OPC=andnl_r32_r32_r32  
  xorl %ebx, %edi         #  2     0x5  2      OPC=xorl_r32_r32       
  retq                    #  3     0x7  1      OPC=retq               
                                                                      
.size target, .-target
