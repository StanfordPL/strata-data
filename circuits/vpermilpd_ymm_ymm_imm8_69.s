  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vxorpd %xmm1, %xmm1, %xmm13       #  1     0     4      OPC=vxorpd_xmm_xmm_xmm       
  vpunpcklqdq %ymm13, %ymm2, %ymm1  #  2     0x4   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm2, %ymm2, %ymm15  #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm2, %ymm1, %ymm7   #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm15, %ymm7, %ymm1  #  5     0x11  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
