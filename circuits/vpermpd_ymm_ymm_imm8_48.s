  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm4      #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vandps %ymm2, %ymm2, %ymm6     #  2     0x5   4      OPC=vandps_ymm_ymm_ymm     
  punpcklqdq %xmm4, %xmm6        #  3     0x9   4      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm4, %ymm6, %ymm1  #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
