  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmaxpd %ymm2, %ymm2, %ymm1     #  1     0     4      OPC=vmaxpd_ymm_ymm_ymm     
  vunpckhpd %ymm2, %ymm1, %ymm9  #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm  
  punpcklqdq %xmm2, %xmm1        #  3     0x8   4      OPC=punpcklqdq_xmm_xmm     
  movhlps %xmm9, %xmm1           #  4     0xc   4      OPC=movhlps_xmm_xmm        
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
