  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vminpd %xmm2, %xmm2, %xmm11  #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm2     #  2     0x4   5      OPC=punpckhqdq_xmm_xmm  
  vorps %ymm2, %ymm2, %ymm1    #  3     0x9   4      OPC=vorps_ymm_ymm_ymm   
  punpcklqdq %xmm11, %xmm1     #  4     0xd   5      OPC=punpcklqdq_xmm_xmm  
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
