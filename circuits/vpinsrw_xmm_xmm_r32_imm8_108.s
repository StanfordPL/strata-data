  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  xorl %edi, %edi                 #  1     0     2      OPC=xorl_r32_r32     
  callq .move_128_064_xmm2_r8_r9  #  2     0x2   5      OPC=callq_label      
  vzeroall                        #  3     0x7   3      OPC=vzeroall         
  cmovpew %bx, %r9w               #  4     0xa   5      OPC=cmovpew_r16_r16  
  callq .move_064_128_r8_r9_xmm1  #  5     0xf   5      OPC=callq_label      
  retq                            #  6     0x14  1      OPC=retq             
                                                                             
.size target, .-target
