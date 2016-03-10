  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                       
.target:                                #        0    0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0    5      OPC=callq_label              
  vbroadcastsd %xmm13, %ymm10           #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm10, %ymm2, %ymm1      #  3     0xa  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  4     0xf  1      OPC=retq                     
                                                                                          
.size target, .-target
