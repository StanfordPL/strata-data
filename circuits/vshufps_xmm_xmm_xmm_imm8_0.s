  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vbroadcastss %xmm3, %xmm1             #  1     0     5      OPC=vbroadcastss_xmm_xmm     
  vbroadcastss %xmm2, %xmm3             #  2     0x5   5      OPC=vbroadcastss_xmm_xmm     
  vmaxps %xmm1, %xmm1, %xmm2            #  3     0xa   4      OPC=vmaxps_xmm_xmm_xmm       
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label              
  divss %xmm12, %xmm3                   #  5     0x13  5      OPC=divss_xmm_xmm            
  vmulss %xmm1, %xmm12, %xmm0           #  6     0x18  4      OPC=vmulss_xmm_xmm_xmm       
  vpunpckhqdq %xmm0, %xmm3, %xmm1       #  7     0x1c  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                  #  8     0x20  1      OPC=retq                     
                                                                                           
.size target, .-target
