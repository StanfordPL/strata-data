  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnl %ebx, %ecx, %edi  #  1     0    5      OPC=andnl_r32_r32_r32  
  movl %edi, %r11d        #  2     0x5  3      OPC=movl_r32_r32       
  xorl %r11d, %ebx        #  3     0x8  3      OPC=xorl_r32_r32       
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
