  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  punpckhqdq %xmm3, %xmm2                       #  2     0x5   4      OPC=punpckhqdq_xmm_xmm       
  unpckhpd %xmm4, %xmm3                         #  3     0x9   4      OPC=unpckhpd_xmm_xmm         
  vpunpcklqdq %ymm3, %ymm2, %ymm7               #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovaps %ymm7, %ymm1                          #  5     0x11  4      OPC=vmovaps_ymm_ymm          
  retq                                          #  6     0x15  1      OPC=retq                     
                                                                                                   
.size target, .-target
