  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm10_xmm11   #  1     0     5      OPC=callq_label              
  vaddss %xmm10, %xmm3, %xmm1           #  2     0x5   5      OPC=vaddss_xmm_xmm_xmm       
  vbroadcastsd %xmm11, %ymm13           #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xf   5      OPC=callq_label              
  vbroadcastsd %xmm3, %ymm1             #  5     0x14  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm13, %ymm1, %ymm1      #  6     0x19  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movapd %xmm2, %xmm1                   #  7     0x1e  4      OPC=movapd_xmm_xmm           
  retq                                  #  8     0x22  1      OPC=retq                     
                                                                                           
.size target, .-target
