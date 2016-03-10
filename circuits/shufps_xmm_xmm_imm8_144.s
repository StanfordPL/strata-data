  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm4            #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vpbroadcastd %xmm11, %ymm3           #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm  
  movddup %xmm3, %xmm11                #  4     0xf   5      OPC=movddup_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label           
  unpcklps %xmm11, %xmm1               #  6     0x19  4      OPC=unpcklps_xmm_xmm      
  movhlps %xmm4, %xmm1                 #  7     0x1d  3      OPC=movhlps_xmm_xmm       
  retq                                 #  8     0x20  1      OPC=retq                  
                                                                                       
.size target, .-target
