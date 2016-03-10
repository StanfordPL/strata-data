  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  callq .move_128_256_xmm8_xmm9_ymm2    #  3     0xa   5      OPC=callq_label              
  vbroadcastsd %xmm10, %ymm1            #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm1, %ymm2, %ymm1       #  5     0x14  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  6     0x18  5      OPC=callq_label              
  movhlps %xmm11, %xmm1                 #  7     0x1d  4      OPC=movhlps_xmm_xmm          
  retq                                  #  8     0x21  1      OPC=retq                     
                                                                                           
.size target, .-target
