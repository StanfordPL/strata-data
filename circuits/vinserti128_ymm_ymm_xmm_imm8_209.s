  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm8_xmm9    #  2     0x5   5      OPC=callq_label              
  vpbroadcastq %xmm3, %ymm0            #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vbroadcastsd %xmm9, %ymm1            #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm     
  cvtpd2ps %xmm1, %xmm1                #  5     0x14  4      OPC=cvtpd2ps_xmm_xmm         
  vpunpcklqdq %ymm1, %ymm0, %ymm1      #  6     0x18  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1c  5      OPC=callq_label              
  retq                                 #  8     0x21  1      OPC=retq                     
                                                                                          
.size target, .-target
