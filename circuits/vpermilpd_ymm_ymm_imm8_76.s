  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vrcpps %xmm2, %xmm10             #  1     0     4      OPC=vrcpps_xmm_xmm         
  vunpcklpd %xmm10, %xmm2, %xmm14  #  2     0x4   5      OPC=vunpcklpd_xmm_xmm_xmm  
  punpcklqdq %xmm14, %xmm2         #  3     0x9   5      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm2, %ymm2, %ymm1    #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
