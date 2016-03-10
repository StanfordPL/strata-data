  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm8_xmm9_xmm1   #  2     0x5   5      OPC=callq_label            
  vpbroadcastq %xmm1, %ymm7           #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  movddup %xmm9, %xmm7                #  4     0xf   5      OPC=movddup_xmm_xmm        
  movups %xmm9, %xmm2                 #  5     0x14  4      OPC=movups_xmm_xmm         
  vunpckhpd %ymm7, %ymm2, %ymm1       #  6     0x18  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                #  7     0x1c  1      OPC=retq                   
                                                                                       
.size target, .-target
