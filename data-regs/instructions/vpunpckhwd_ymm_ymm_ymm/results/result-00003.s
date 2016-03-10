  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label              
  vpunpckhqdq %ymm2, %ymm3, %ymm1   #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vcvtsi2sdl %r9d, %xmm2, %xmm6     #  3     0x9   5      OPC=vcvtsi2sdl_xmm_xmm_r32   
  vpunpckhqdq %ymm6, %ymm2, %ymm13  #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklwd %ymm1, %ymm13, %ymm14  #  5     0x12  4      OPC=vpunpcklwd_ymm_ymm_ymm   
  vmaxpd %ymm14, %ymm14, %ymm1      #  6     0x16  5      OPC=vmaxpd_ymm_ymm_ymm       
  retq                              #  7     0x1b  1      OPC=retq                     
                                                                                       
.size target, .-target
