  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label               
  punpckhdq %xmm9, %xmm9             #  2     0x5   5      OPC=punpckhdq_xmm_xmm         
  vfnmsub231ps %xmm9, %xmm3, %xmm3   #  3     0xa   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vaddss %xmm3, %xmm2, %xmm1         #  4     0xf   4      OPC=vaddss_xmm_xmm_xmm        
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
