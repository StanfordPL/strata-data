  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  movups %xmm1, %xmm12                  #  1     0     4      OPC=movups_xmm_xmm       
  vpmovsxdq %xmm12, %ymm2               #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm    
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label          
  vphaddd %xmm11, %xmm10, %xmm6         #  4     0xe   5      OPC=vphaddd_xmm_xmm_xmm  
  vpsubd %xmm12, %xmm6, %xmm12          #  5     0x13  5      OPC=vpsubd_xmm_xmm_xmm   
  sqrtps %xmm12, %xmm1                  #  6     0x18  4      OPC=sqrtps_xmm_xmm       
  retq                                  #  7     0x1c  1      OPC=retq                 
                                                                                       
.size target, .-target
