  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm11, %ymm0            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vmovapd %ymm2, %ymm8                  #  3     0xa   4      OPC=vmovapd_ymm_ymm          
  vmovddup %xmm2, %xmm9                 #  4     0xe   4      OPC=vmovddup_xmm_xmm         
  callq .move_128_256_xmm8_xmm9_ymm2    #  5     0x12  5      OPC=callq_label              
  vpunpckhqdq %ymm0, %ymm2, %ymm1       #  6     0x17  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1b  1      OPC=retq                     
                                                                                           
.size target, .-target
