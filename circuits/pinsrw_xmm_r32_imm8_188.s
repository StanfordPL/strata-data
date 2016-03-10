  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movdqu %xmm1, %xmm2             #  1     0     4      OPC=movdqu_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label     
  xaddw %r9w, %bx                 #  3     0x9   5      OPC=xaddw_r16_r16   
  callq .move_064_128_r8_r9_xmm1  #  4     0xe   5      OPC=callq_label     
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
