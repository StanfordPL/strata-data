  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  xorl %ebx, %ebx                           #  1     0    2      OPC=xorl_r32_r32     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x2  5      OPC=callq_label      
  cmovpew %dx, %bx                          #  3     0x7  4      OPC=cmovpew_r16_r16  
  retq                                      #  4     0xb  1      OPC=retq             
                                                                                      
.size target, .-target
