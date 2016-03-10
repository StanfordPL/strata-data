  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  unpckhpd %xmm2, %xmm1                           #  1     0     4      OPC=unpckhpd_xmm_xmm         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpckhqdq %xmm10, %xmm2, %xmm5                #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm9, %ymm10                      #  4     0xe   5      OPC=vpbroadcastd_ymm_xmm     
  vmovsldup %xmm5, %xmm9                          #  5     0x13  4      OPC=vmovsldup_xmm_xmm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                            #  7     0x1c  1      OPC=retq                     
                                                                                                     
.size target, .-target
