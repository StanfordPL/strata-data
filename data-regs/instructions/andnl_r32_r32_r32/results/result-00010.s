  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_032_016_ecx_r10w_r11w  #  1     0    5      OPC=callq_label   
  callq .move_016_032_r10w_r11w_ebx  #  2     0x5  5      OPC=callq_label   
  orl %edx, %ebx                     #  3     0xa  2      OPC=orl_r32_r32   
  xorl %ecx, %ebx                    #  4     0xc  2      OPC=xorl_r32_r32  
  retq                               #  5     0xe  1      OPC=retq          
                                                                            
.size target, .-target
