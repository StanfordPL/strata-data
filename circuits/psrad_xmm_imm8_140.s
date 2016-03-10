  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vpmovsxdq %xmm1, %ymm11               #  1     0     5      OPC=vpmovsxdq_ymm_xmm    
  vmovshdup %ymm11, %ymm14              #  2     0x5   5      OPC=vmovshdup_ymm_ymm    
  vhsubps %ymm14, %ymm14, %ymm3         #  3     0xa   5      OPC=vhsubps_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xf   5      OPC=callq_label          
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x14  5      OPC=callq_label          
  retq                                  #  6     0x19  1      OPC=retq                 
                                                                                       
.size target, .-target
