  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode             
.target:                                        #        0    0      OPC=<label>        
  xorl %ebx, %ebx                               #  1     0    2      OPC=xorl_r32_r32   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x2  5      OPC=callq_label    
  decb %bh                                      #  3     0x7  2      OPC=decb_rh        
  xaddw %bx, %r11w                              #  4     0x9  5      OPC=xaddw_r16_r16  
  retq                                          #  5     0xe  1      OPC=retq           
                                                                                        
.size target, .-target
