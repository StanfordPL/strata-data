  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  movq %xmm2, %xmm11                  #  2     0x5   5      OPC=movq_xmm_xmm             
  vmaxsd %xmm11, %xmm9, %xmm10        #  3     0xa   5      OPC=vmaxsd_xmm_xmm_xmm       
  vmovhlps %xmm10, %xmm10, %xmm6      #  4     0xf   5      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpckhqdq %ymm10, %ymm6, %ymm8    #  5     0x14  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  6     0x19  5      OPC=callq_label              
  retq                                #  7     0x1e  1      OPC=retq                     
                                                                                         
.size target, .-target
