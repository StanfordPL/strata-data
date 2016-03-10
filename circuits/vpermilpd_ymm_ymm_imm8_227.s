  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vorpd %ymm2, %ymm2, %ymm9         #  1     0     4      OPC=vorpd_ymm_ymm_ymm        
  unpckhpd %xmm9, %xmm9             #  2     0x4   5      OPC=unpckhpd_xmm_xmm         
  vbroadcastss %xmm9, %ymm4         #  3     0x9   5      OPC=vbroadcastss_ymm_xmm     
  vpunpcklqdq %ymm9, %ymm4, %ymm12  #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %ymm12, %ymm12, %ymm1   #  5     0x13  5      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                              #  6     0x18  1      OPC=retq                     
                                                                                       
.size target, .-target
