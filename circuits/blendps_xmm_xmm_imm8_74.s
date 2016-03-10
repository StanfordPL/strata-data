  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm8_xmm9             #  2     0x5   5      OPC=callq_label            
  movss %xmm1, %xmm8                            #  3     0xa   5      OPC=movss_xmm_xmm          
  vunpckhps %xmm8, %xmm1, %xmm6                 #  4     0xf   5      OPC=vunpckhps_xmm_xmm_xmm  
  vpmovzxdq %xmm1, %ymm4                        #  5     0x14  5      OPC=vpmovzxdq_ymm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm2  #  6     0x19  5      OPC=callq_label            
  movupd %xmm2, %xmm1                           #  7     0x1e  4      OPC=movupd_xmm_xmm         
  retq                                          #  8     0x22  1      OPC=retq                   
                                                                                                 
.size target, .-target
