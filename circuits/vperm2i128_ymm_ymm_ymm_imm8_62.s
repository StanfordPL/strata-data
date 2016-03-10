  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vaddsubpd %xmm3, %xmm2, %xmm2  #  1     0     4      OPC=vaddsubpd_xmm_xmm_xmm  
  vxorpd %xmm9, %xmm9, %xmm9     #  2     0x4   5      OPC=vxorpd_xmm_xmm_xmm     
  sqrtpd %xmm9, %xmm3            #  3     0x9   5      OPC=sqrtpd_xmm_xmm         
  vandnps %ymm3, %ymm2, %ymm1    #  4     0xe   4      OPC=vandnps_ymm_ymm_ymm    
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
