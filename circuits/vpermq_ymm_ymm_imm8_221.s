  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vpmovzxdq %xmm2, %ymm7              #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vphaddd %ymm7, %ymm7, %ymm7         #  2     0x5   5      OPC=vphaddd_ymm_ymm_ymm    
  vmovapd %ymm2, %ymm6                #  3     0xa   4      OPC=vmovapd_ymm_ymm        
  vunpckhpd %ymm6, %ymm7, %ymm1       #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  5     0x12  5      OPC=callq_label            
  punpckhqdq %xmm9, %xmm1             #  6     0x17  5      OPC=punpckhqdq_xmm_xmm     
  retq                                #  7     0x1c  1      OPC=retq                   
                                                                                       
.size target, .-target
