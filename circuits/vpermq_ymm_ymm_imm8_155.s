  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpmovzxdq %xmm2, %ymm10               #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vphsubd %ymm10, %ymm10, %ymm3         #  2     0x5   5      OPC=vphsubd_ymm_ymm_ymm    
  vunpcklpd %ymm2, %ymm3, %ymm1         #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  vandnpd %ymm10, %ymm2, %ymm10         #  5     0x13  5      OPC=vandnpd_ymm_ymm_ymm    
  movhlps %xmm11, %xmm10                #  6     0x18  4      OPC=movhlps_xmm_xmm        
  callq .move_64_128_xmm10_xmm11_xmm1   #  7     0x1c  5      OPC=callq_label            
  retq                                  #  8     0x21  1      OPC=retq                   
                                                                                         
.size target, .-target
