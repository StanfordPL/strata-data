  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vxorps %xmm13, %xmm13, %xmm12  #  1     0    5      OPC=vxorps_xmm_xmm_xmm  
  vminpd %ymm12, %ymm12, %ymm9   #  2     0x5  5      OPC=vminpd_ymm_ymm_ymm  
  movq %xmm9, %xmm1              #  3     0xa  5      OPC=movq_xmm_xmm        
  retq                           #  4     0xf  1      OPC=retq                
                                                                              
.size target, .-target
