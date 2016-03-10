  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %ymm12       #  1     0     5      OPC=vpbroadcastd_ymm_xmm     
  pxor %xmm2, %xmm2                #  2     0x5   4      OPC=pxor_xmm_xmm             
  vpunpcklqdq %xmm2, %xmm2, %xmm1  #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vaddpd %ymm1, %ymm12, %ymm1      #  4     0xd   4      OPC=vaddpd_ymm_ymm_ymm       
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
