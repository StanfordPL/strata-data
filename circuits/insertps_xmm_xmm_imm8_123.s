  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpbroadcastq %xmm5, %xmm13                    #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm     
  callq .move_byte_8_of_ymm1_to_r9b             #  3     0xa   5      OPC=callq_label              
  unpcklpd %xmm6, %xmm1                         #  4     0xf   4      OPC=unpcklpd_xmm_xmm         
  vfmsub132ss %xmm13, %xmm5, %xmm7              #  5     0x13  5      OPC=vfmsub132ss_xmm_xmm_xmm  
  callq .move_r9b_to_byte_5_of_ymm1             #  6     0x18  5      OPC=callq_label              
  movhlps %xmm7, %xmm1                          #  7     0x1d  3      OPC=movhlps_xmm_xmm          
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
