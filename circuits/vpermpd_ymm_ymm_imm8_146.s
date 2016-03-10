  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm13, %ymm12          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vmovddup %ymm2, %ymm1                #  3     0xa   4      OPC=vmovddup_ymm_ymm       
  callq .move_256_128_ymm1_xmm8_xmm9   #  4     0xe   5      OPC=callq_label            
  movddup %xmm9, %xmm12                #  5     0x13  5      OPC=movddup_xmm_xmm        
  vunpcklpd %ymm2, %ymm12, %ymm1       #  6     0x18  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                 #  7     0x1c  1      OPC=retq                   
                                                                                        
.size target, .-target
