  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vpxor %ymm9, %ymm9, %ymm13                      #  1     0     5      OPC=vpxor_ymm_ymm_ymm      
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vmovss %xmm11, %xmm3, %xmm1                     #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklpd %xmm9, %xmm13, %xmm7                  #  4     0xf   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vunpckhps %xmm1, %xmm7, %xmm7                   #  5     0x14  4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckldq %xmm7, %xmm1                          #  6     0x18  4      OPC=punpckldq_xmm_xmm      
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
