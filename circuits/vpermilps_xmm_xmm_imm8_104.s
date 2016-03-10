  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm9, %xmm10, %xmm9                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  3     0xa   5      OPC=callq_label            
  vunpcklpd %xmm9, %xmm2, %xmm1                   #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  5     0x14  1      OPC=retq                   
                                                                                                   
.size target, .-target
