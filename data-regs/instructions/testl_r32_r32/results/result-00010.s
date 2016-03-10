  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnl %ecx, %ebx, %edi  #  1     0    5      OPC=andnl_r32_r32_r32  
  xchgl %ebx, %ecx        #  2     0x5  2      OPC=xchgl_r32_r32      
  xorl %edi, %ebx         #  3     0x7  2      OPC=xorl_r32_r32       
  retq                    #  4     0x9  1      OPC=retq               
                                                                      
.size target, .-target
