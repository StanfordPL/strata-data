  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm11            #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vmovdqu %ymm11, %ymm4                 #  2     0x5   5      OPC=vmovdqu_ymm_ymm          
  movupd %xmm4, %xmm2                   #  3     0xa   4      OPC=movupd_xmm_xmm           
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xe   5      OPC=callq_label              
  vpunpckhqdq %ymm11, %ymm2, %ymm1      #  5     0x13  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
