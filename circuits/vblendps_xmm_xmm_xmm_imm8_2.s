  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movlhps %xmm11, %xmm3                #  2     0x5   4      OPC=movlhps_xmm_xmm     
  vmovss %xmm10, %xmm3, %xmm13         #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm  
  vminpd %ymm13, %ymm13, %ymm1         #  4     0xe   5      OPC=vminpd_ymm_ymm_ymm  
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
