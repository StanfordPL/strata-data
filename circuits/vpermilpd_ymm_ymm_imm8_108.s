  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmaxpd %xmm2, %xmm9, %xmm6         #  2     0x5   4      OPC=vmaxpd_xmm_xmm_xmm       
  vunpckhpd %ymm6, %ymm2, %ymm2      #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm2, %ymm1    #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movddup %xmm8, %xmm1               #  5     0x11  5      OPC=movddup_xmm_xmm          
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
