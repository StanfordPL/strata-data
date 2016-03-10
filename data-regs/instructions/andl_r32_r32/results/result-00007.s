  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  xchgb %bl, %bl          #  1     0    2      OPC=xchgb_r8_r8        
  andnl %ebx, %ecx, %ebp  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  xorl %ebp, %ebx         #  3     0x7  2      OPC=xorl_r32_r32       
  retq                    #  4     0x9  1      OPC=retq               
                                                                      
.size target, .-target
