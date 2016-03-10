  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovups %xmm2, %xmm10                #  1     0     4      OPC=vmovups_xmm_xmm          
  vmovaps %xmm3, %xmm11                #  2     0x4   4      OPC=vmovaps_xmm_xmm          
  vpunpckhqdq %ymm3, %ymm2, %ymm1      #  3     0x8   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xc   5      OPC=callq_label              
  retq                                 #  5     0x11  1      OPC=retq                     
                                                                                          
.size target, .-target
