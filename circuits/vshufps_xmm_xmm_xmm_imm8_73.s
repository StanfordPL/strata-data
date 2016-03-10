  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm3_xmm12_xmm13             #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm10, %xmm9, %xmm14                 #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklpd %xmm12, %xmm14, %xmm1                 #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  5     0x14  1      OPC=retq                   
                                                                                                   
.size target, .-target
