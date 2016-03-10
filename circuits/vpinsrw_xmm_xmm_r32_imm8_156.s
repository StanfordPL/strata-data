  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  xaddw %r9w, %bx                 #  2     0x5   5      OPC=xaddw_r16_r16    
  callq .move_064_128_r8_r9_xmm2  #  3     0xa   5      OPC=callq_label      
  vmovaps %xmm2, %xmm1            #  4     0xf   4      OPC=vmovaps_xmm_xmm  
  retq                            #  5     0x13  1      OPC=retq             
                                                                             
.size target, .-target
