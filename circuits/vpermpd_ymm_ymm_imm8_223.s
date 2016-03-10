  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovupd %xmm11, %xmm13                #  2     0x5   5      OPC=vmovupd_xmm_xmm          
  movhlps %xmm2, %xmm11                 #  3     0xa   4      OPC=movhlps_xmm_xmm          
  vpunpckhqdq %xmm11, %xmm13, %xmm10    #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label              
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
