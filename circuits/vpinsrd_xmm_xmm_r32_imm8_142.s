  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movd %ebx, %xmm10                               #  1     0     5      OPC=movd_xmm_r32           
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label            
  vxorpd %xmm6, %xmm10, %xmm8                     #  3     0xa   4      OPC=vxorpd_xmm_xmm_xmm     
  vbroadcastss %xmm7, %xmm11                      #  4     0xe   5      OPC=vbroadcastss_xmm_xmm   
  vminss %xmm6, %xmm10, %xmm9                     #  5     0x13  4      OPC=vminss_xmm_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  6     0x17  5      OPC=callq_label            
  punpckhdq %xmm3, %xmm9                          #  7     0x1c  5      OPC=punpckhdq_xmm_xmm      
  vphaddd %ymm8, %ymm9, %ymm10                    #  8     0x21  5      OPC=vphaddd_ymm_ymm_ymm    
  vunpcklpd %xmm10, %xmm2, %xmm1                  #  9     0x26  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  10    0x2b  1      OPC=retq                   
                                                                                                   
.size target, .-target
