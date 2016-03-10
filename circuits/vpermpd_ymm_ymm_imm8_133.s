  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm2, %ymm3          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vorps %ymm3, %ymm3, %ymm4          #  3     0xa   4      OPC=vorps_ymm_ymm_ymm      
  vunpcklpd %ymm2, %ymm4, %ymm1      #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movddup %xmm9, %xmm1               #  5     0x12  5      OPC=movddup_xmm_xmm        
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target
