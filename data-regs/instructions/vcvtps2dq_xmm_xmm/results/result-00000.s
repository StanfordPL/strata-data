  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vxorps %xmm6, %xmm6, %xmm1   #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  vxorps %xmm2, %xmm1, %xmm11  #  2     0x4  4      OPC=vxorps_xmm_xmm_xmm  
  vcvtps2dq %ymm11, %ymm1      #  3     0x8  5      OPC=vcvtps2dq_ymm_ymm   
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
