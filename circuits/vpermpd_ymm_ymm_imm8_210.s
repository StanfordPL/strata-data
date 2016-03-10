  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovupd %ymm2, %ymm13                 #  1     0     4      OPC=vmovupd_ymm_ymm          
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vmovlhps %xmm13, %xmm11, %xmm12       #  3     0x9   5      OPC=vmovlhps_xmm_xmm_xmm     
  movaps %xmm12, %xmm10                 #  4     0xe   4      OPC=movaps_xmm_xmm           
  vpunpckhqdq %xmm11, %xmm2, %xmm11     #  5     0x12  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x17  5      OPC=callq_label              
  retq                                  #  7     0x1c  1      OPC=retq                     
                                                                                           
.size target, .-target
