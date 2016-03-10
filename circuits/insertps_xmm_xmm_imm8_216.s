  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm6, %ymm3                     #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %xmm4, %xmm2, %xmm8                 #  3     0xa   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vpmovzxdq %xmm3, %xmm9                        #  4     0xe   5      OPC=vpmovzxdq_xmm_xmm      
  movss %xmm4, %xmm8                            #  5     0x13  5      OPC=movss_xmm_xmm          
  callq .move_64_128_xmm8_xmm9_xmm1             #  6     0x18  5      OPC=callq_label            
  retq                                          #  7     0x1d  1      OPC=retq                   
                                                                                                 
.size target, .-target
