  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode            
.target:                                        #        0    0      OPC=<label>       
  xorl %ebx, %ebx                               #  1     0    2      OPC=xorl_r32_r32  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x2  5      OPC=callq_label   
  addw %r11w, %bx                               #  3     0x7  4      OPC=addw_r16_r16  
  retq                                          #  4     0xb  1      OPC=retq          
                                                                                       
.size target, .-target
