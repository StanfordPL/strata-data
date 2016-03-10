  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vbroadcastsd %xmm2, %ymm12            #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %ymm12, %ymm2, %ymm1      #  3     0xa   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movapd %xmm13, %xmm1                  #  4     0xf   5      OPC=movapd_xmm_xmm           
  retq                                  #  5     0x14  1      OPC=retq                     
                                                                                           
.size target, .-target
