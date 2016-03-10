  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  xaddw %r12w, %bx                  #  2     0x5   5      OPC=xaddw_r16_r16       
  vpaddq %xmm2, %xmm2, %xmm9        #  3     0xa   4      OPC=vpaddq_xmm_xmm_xmm  
  vaddss %xmm9, %xmm9, %xmm1        #  4     0xe   5      OPC=vaddss_xmm_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                              #  6     0x18  1      OPC=retq                
                                                                                  
.size target, .-target
