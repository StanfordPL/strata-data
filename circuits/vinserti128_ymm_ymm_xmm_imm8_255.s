  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpmovsxwq %xmm3, %ymm15               #  2     0x5   5      OPC=vpmovsxwq_ymm_xmm        
  vmovhlps %xmm3, %xmm15, %xmm0         #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm     
  vbroadcastsd %xmm3, %ymm14            #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm     
  vbroadcastsd %xmm0, %ymm6             #  5     0x13  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %xmm6, %xmm14, %xmm13     #  6     0x18  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  7     0x1c  5      OPC=callq_label              
  retq                                  #  8     0x21  1      OPC=retq                     
                                                                                           
.size target, .-target
