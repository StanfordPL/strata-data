  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vpmovsxdq %xmm1, %ymm4                #  1     0     5      OPC=vpmovsxdq_ymm_xmm    
  vmovshdup %ymm4, %ymm6                #  2     0x5   4      OPC=vmovshdup_ymm_ymm    
  vhaddps %ymm6, %ymm6, %ymm2           #  3     0x9   4      OPC=vhaddps_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xd   5      OPC=callq_label          
  callq .move_64_128_xmm10_xmm11_xmm2   #  5     0x12  5      OPC=callq_label          
  sqrtps %xmm2, %xmm1                   #  6     0x17  3      OPC=sqrtps_xmm_xmm       
  retq                                  #  7     0x1a  1      OPC=retq                 
                                                                                       
.size target, .-target
