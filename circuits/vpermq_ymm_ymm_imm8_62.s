  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovddup %xmm2, %xmm1                 #  2     0x5   4      OPC=vmovddup_xmm_xmm         
  vbroadcastsd %xmm1, %ymm1             #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm1       #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movaps %xmm13, %xmm1                  #  5     0x12  4      OPC=movaps_xmm_xmm           
  retq                                  #  6     0x16  1      OPC=retq                     
                                                                                           
.size target, .-target
