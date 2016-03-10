  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm3, %xmm2, %xmm14  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vxorps %ymm2, %ymm14, %ymm1  #  2     0x4  4      OPC=vxorps_ymm_ymm_ymm  
  retq                         #  3     0x8  1      OPC=retq                
                                                                            
.size target, .-target
