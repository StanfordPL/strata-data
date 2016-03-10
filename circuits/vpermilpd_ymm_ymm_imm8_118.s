  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovdqu %ymm2, %ymm5                          #  1     0     4      OPC=vmovdqu_ymm_ymm          
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vmovddup %ymm5, %ymm0                         #  3     0x9   4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm0, %ymm5, %ymm1               #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label              
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target
