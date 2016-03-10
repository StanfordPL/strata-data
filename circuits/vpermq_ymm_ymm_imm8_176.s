  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastw %xmm2, %ymm13       #  1     0     5      OPC=vpbroadcastw_ymm_xmm     
  vpor %xmm2, %xmm2, %xmm11        #  2     0x5   4      OPC=vpor_xmm_xmm_xmm         
  vunpckhpd %ymm13, %ymm2, %ymm1   #  3     0x9   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm1, %ymm1  #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movddup %xmm11, %xmm1            #  5     0x12  5      OPC=movddup_xmm_xmm          
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
