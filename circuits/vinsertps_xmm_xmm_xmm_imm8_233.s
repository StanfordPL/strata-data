  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpmovzxdq %xmm2, %ymm11                       #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm      
  callq .move_128_64_xmm3_xmm8_xmm9             #  3     0xa   5      OPC=callq_label            
  vandps %xmm7, %xmm7, %xmm5                    #  4     0xf   4      OPC=vandps_xmm_xmm_xmm     
  vunpckhps %xmm11, %xmm9, %xmm1                #  5     0x13  5      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm5, %xmm1                         #  6     0x18  4      OPC=unpcklpd_xmm_xmm       
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
