  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpandn %xmm6, %xmm6, %xmm8                    #  2     0x5   4      OPC=vpandn_xmm_xmm_xmm     
  vpmovzxwd %xmm8, %ymm0                        #  3     0x9   5      OPC=vpmovzxwd_ymm_xmm      
  vunpcklps %xmm0, %xmm0, %xmm9                 #  4     0xe   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmaxpd %ymm8, %ymm8, %ymm8                    #  5     0x12  5      OPC=vmaxpd_ymm_ymm_ymm     
  callq .move_64_128_xmm8_xmm9_xmm1             #  6     0x17  5      OPC=callq_label            
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
