  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm1         #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  vmaxps %xmm1, %xmm1, %xmm13           #  3     0x9   4      OPC=vmaxps_xmm_xmm_xmm     
  callq .move_64_128_xmm12_xmm13_xmm1   #  4     0xd   5      OPC=callq_label            
  retq                                  #  5     0x12  1      OPC=retq                   
                                                                                         
.size target, .-target
