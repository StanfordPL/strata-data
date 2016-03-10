  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movddup %xmm2, %xmm9             #  1     0     5      OPC=movddup_xmm_xmm          
  vpbroadcastq %xmm9, %xmm1        #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm     
  vunpckhpd %ymm1, %ymm2, %ymm1    #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm1, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
