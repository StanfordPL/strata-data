  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovups %ymm2, %ymm1           #  1     0     4      OPC=vmovups_ymm_ymm       
  vxorps %ymm2, %ymm1, %ymm3     #  2     0x4   4      OPC=vxorps_ymm_ymm_ymm    
  vmovhlps %xmm3, %xmm1, %xmm11  #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm1       #  4     0xc   5      OPC=punpckhqdq_xmm_xmm    
  retq                           #  5     0x11  1      OPC=retq                  
                                                                                 
.size target, .-target
