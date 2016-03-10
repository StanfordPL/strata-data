  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovaps %ymm2, %ymm14               #  1     0     4      OPC=vmovaps_ymm_ymm          
  vbroadcastsd %xmm14, %ymm9          #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %ymm2, %ymm9, %ymm1     #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
