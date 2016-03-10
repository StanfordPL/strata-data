  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vandpd %ymm2, %ymm2, %ymm1           #  1     0     4      OPC=vandpd_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  movddup %xmm10, %xmm1                #  3     0x9   5      OPC=movddup_xmm_xmm     
  unpcklpd %xmm11, %xmm1               #  4     0xe   5      OPC=unpcklpd_xmm_xmm    
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
