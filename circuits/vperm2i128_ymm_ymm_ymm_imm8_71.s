  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm8       #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vminsd %xmm3, %xmm8, %xmm12           #  2     0x4   4      OPC=vminsd_xmm_xmm_xmm       
  vpunpckldq %ymm12, %ymm3, %ymm12      #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  movaps %xmm2, %xmm13                  #  5     0x12  4      OPC=movaps_xmm_xmm           
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x16  5      OPC=callq_label              
  movupd %xmm11, %xmm1                  #  7     0x1b  5      OPC=movupd_xmm_xmm           
  retq                                  #  8     0x20  1      OPC=retq                     
                                                                                           
.size target, .-target
