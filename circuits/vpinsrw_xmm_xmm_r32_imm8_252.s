  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  xchgw %r9w, %bx                 #  2     0x5   4      OPC=xchgw_r16_r16    
  callq .move_064_128_r8_r9_xmm3  #  3     0x9   5      OPC=callq_label      
  vmovdqa %xmm3, %xmm1            #  4     0xe   4      OPC=vmovdqa_xmm_xmm  
  retq                            #  5     0x12  1      OPC=retq             
                                                                             
.size target, .-target
