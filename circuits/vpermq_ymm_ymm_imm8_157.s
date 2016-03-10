  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm12, %xmm2, %xmm9      #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpcklqdq %xmm13, %xmm9              #  3     0xa   5      OPC=punpcklqdq_xmm_xmm       
  punpckhqdq %xmm13, %xmm2              #  4     0xf   5      OPC=punpckhqdq_xmm_xmm       
  vmovupd %ymm2, %ymm8                  #  5     0x14  4      OPC=vmovupd_ymm_ymm          
  callq .move_128_256_xmm8_xmm9_ymm1    #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
