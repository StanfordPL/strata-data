  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  unpcklpd %xmm13, %xmm12               #  2     0x5   5      OPC=unpcklpd_xmm_xmm       
  movdqa %xmm13, %xmm1                  #  3     0xa   5      OPC=movdqa_xmm_xmm         
  vandps %xmm1, %xmm1, %xmm13           #  4     0xf   4      OPC=vandps_xmm_xmm_xmm     
  vunpckhpd %ymm2, %ymm13, %ymm13       #  5     0x13  4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x17  5      OPC=callq_label            
  retq                                  #  7     0x1c  1      OPC=retq                   
                                                                                         
.size target, .-target
