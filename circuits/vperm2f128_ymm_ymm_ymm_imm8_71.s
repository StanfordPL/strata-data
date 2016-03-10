  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm12, %ymm11           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vmovups %ymm11, %ymm2                 #  3     0xa   5      OPC=vmovups_ymm_ymm          
  callq .move_256_128_ymm3_xmm8_xmm9    #  4     0xf   5      OPC=callq_label              
  callq .move_128_256_xmm12_xmm13_ymm3  #  5     0x14  5      OPC=callq_label              
  vpunpcklqdq %ymm3, %ymm2, %ymm1       #  6     0x19  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movupd %xmm9, %xmm1                   #  7     0x1d  5      OPC=movupd_xmm_xmm           
  retq                                  #  8     0x22  1      OPC=retq                     
                                                                                           
.size target, .-target
