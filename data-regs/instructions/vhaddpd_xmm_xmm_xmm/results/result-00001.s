  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovhlps %xmm2, %xmm3, %xmm1     #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpcklqdq %xmm3, %xmm2, %xmm2  #  2     0x4   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vorps %ymm1, %ymm1, %ymm15       #  3     0x8   4      OPC=vorps_ymm_ymm_ymm        
  vaddpd %ymm15, %ymm2, %ymm1      #  4     0xc   5      OPC=vaddpd_ymm_ymm_ymm       
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
