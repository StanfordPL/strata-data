  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm7             #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  movddup %xmm12, %xmm2                 #  3     0xa   5      OPC=movddup_xmm_xmm        
  vunpckhpd %ymm7, %ymm2, %ymm1         #  4     0xf   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
