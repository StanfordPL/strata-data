  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm10, %xmm11, %xmm8                 #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm9                       #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xf   5      OPC=callq_label            
  retq                                            #  5     0x14  1      OPC=retq                   
                                                                                                   
.size target, .-target
