  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vcvtpd2dqx %xmm2, %xmm1              #  1     0     4      OPC=vcvtpd2dqx_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  sqrtps %xmm13, %xmm1                 #  3     0x9   4      OPC=sqrtps_xmm_xmm      
  pmovsxwq %xmm1, %xmm3                #  4     0xd   5      OPC=pmovsxwq_xmm_xmm    
  vxorps %ymm3, %ymm1, %ymm1           #  5     0x12  4      OPC=vxorps_ymm_ymm_ymm  
  retq                                 #  6     0x16  1      OPC=retq                
                                                                                     
.size target, .-target
