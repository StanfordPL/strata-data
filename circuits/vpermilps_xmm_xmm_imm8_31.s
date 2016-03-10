  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpxor %xmm7, %xmm7, %xmm10                      #  2     0x5   4      OPC=vpxor_xmm_xmm_xmm      
  vunpcklpd %xmm10, %xmm8, %xmm8                  #  3     0x9   5      OPC=vunpcklpd_xmm_xmm_xmm  
  punpckldq %xmm8, %xmm9                          #  4     0xe   5      OPC=punpckldq_xmm_xmm      
  vbroadcastss %xmm11, %xmm10                     #  5     0x13  5      OPC=vbroadcastss_xmm_xmm   
  vunpcklpd %xmm9, %xmm10, %xmm1                  #  6     0x18  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
