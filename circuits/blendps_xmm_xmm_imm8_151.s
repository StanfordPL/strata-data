  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vpmovzxbd %xmm1, %ymm3                        #  1     0     5      OPC=vpmovzxbd_ymm_xmm      
  callq .move_128_64_xmm2_xmm12_xmm13           #  2     0x5   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label            
  vunpckhpd %xmm3, %xmm2, %xmm6                 #  4     0xf   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label            
  movsd %xmm12, %xmm1                           #  6     0x18  5      OPC=movsd_xmm_xmm          
  retq                                          #  7     0x1d  1      OPC=retq                   
                                                                                                 
.size target, .-target
