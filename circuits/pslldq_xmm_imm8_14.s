  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm6, %xmm4, %xmm7                 #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_byte_1_of_ymm1_to_r9b             #  3     0x9   5      OPC=callq_label            
  callq .move_byte_0_of_ymm1_to_r8b             #  4     0xe   5      OPC=callq_label            
  cvtpd2dq %xmm7, %xmm1                         #  5     0x13  4      OPC=cvtpd2dq_xmm_xmm       
  callq .move_r8b_to_byte_14_of_ymm1            #  6     0x17  5      OPC=callq_label            
  callq .move_r9b_to_byte_15_of_ymm1            #  7     0x1c  5      OPC=callq_label            
  retq                                          #  8     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
