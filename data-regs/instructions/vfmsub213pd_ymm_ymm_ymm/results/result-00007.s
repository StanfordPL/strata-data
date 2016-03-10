  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vfmsub231pd %ymm1, %ymm2, %ymm3      #  1     0     5      OPC=vfmsub231pd_ymm_ymm_ymm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vmovhlps %xmm13, %xmm13, %xmm1       #  3     0xa   5      OPC=vmovhlps_xmm_xmm_xmm     
  vsubpd %ymm1, %ymm3, %ymm1           #  4     0xf   4      OPC=vsubpd_ymm_ymm_ymm       
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
