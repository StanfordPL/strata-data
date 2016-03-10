  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovaps %ymm2, %ymm1                          #  1     0     4      OPC=vmovaps_ymm_ymm          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  unpckhpd %xmm5, %xmm3                         #  3     0x9   4      OPC=unpckhpd_xmm_xmm         
  vpunpcklqdq %ymm3, %ymm2, %ymm10              #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovdqa %ymm10, %ymm1                         #  5     0x11  5      OPC=vmovdqa_ymm_ymm          
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target
