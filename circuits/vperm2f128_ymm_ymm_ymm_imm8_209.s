  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vminps %ymm2, %ymm2, %ymm1                    #  1     0     4      OPC=vminps_ymm_ymm_ymm        
  callq .move_128_64_xmm3_xmm8_xmm9             #  2     0x4   5      OPC=callq_label               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label               
  callq .move_256_128_ymm1_xmm12_xmm13          #  4     0xe   5      OPC=callq_label               
  haddpd %xmm5, %xmm1                           #  5     0x13  4      OPC=haddpd_xmm_xmm            
  vfnmsub231ss %xmm8, %xmm3, %xmm1              #  6     0x17  5      OPC=vfnmsub231ss_xmm_xmm_xmm  
  movdqu %xmm13, %xmm1                          #  7     0x1c  5      OPC=movdqu_xmm_xmm            
  retq                                          #  8     0x21  1      OPC=retq                      
                                                                                                    
.size target, .-target
