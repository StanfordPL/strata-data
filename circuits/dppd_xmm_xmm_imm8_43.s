  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vmulpd %xmm2, %xmm1, %xmm2                      #  1     0     4      OPC=vmulpd_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vaddpd %xmm2, %xmm11, %xmm6                     #  3     0x9   4      OPC=vaddpd_xmm_xmm_xmm       
  vmovdqa %ymm6, %ymm0                            #  4     0xd   4      OPC=vmovdqa_ymm_ymm          
  vmaxpd %xmm0, %xmm0, %xmm10                     #  5     0x11  4      OPC=vmaxpd_xmm_xmm_xmm       
  vpunpckhqdq %ymm0, %ymm10, %ymm12               #  6     0x15  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movupd %xmm12, %xmm1                            #  7     0x19  5      OPC=movupd_xmm_xmm           
  retq                                            #  8     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
