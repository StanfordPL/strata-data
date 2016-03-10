  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vhaddps %xmm2, %xmm2, %xmm9    #  1     0     4      OPC=vhaddps_xmm_xmm_xmm    
  punpcklqdq %xmm2, %xmm2        #  2     0x4   4      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm9, %ymm2, %ymm4  #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklpd %ymm4, %ymm4, %ymm1  #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
