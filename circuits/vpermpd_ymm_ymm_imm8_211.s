  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm13, %xmm12, %xmm9     #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovupd %ymm9, %ymm8                  #  3     0xa   5      OPC=vmovupd_ymm_ymm          
  movaps %xmm2, %xmm7                   #  4     0xf   3      OPC=movaps_xmm_xmm           
  vmovlhps %xmm7, %xmm12, %xmm2         #  5     0x12  4      OPC=vmovlhps_xmm_xmm_xmm     
  unpckhpd %xmm2, %xmm8                 #  6     0x16  5      OPC=unpckhpd_xmm_xmm         
  callq .move_128_256_xmm8_xmm9_ymm1    #  7     0x1b  5      OPC=callq_label              
  retq                                  #  8     0x20  1      OPC=retq                     
                                                                                           
.size target, .-target
