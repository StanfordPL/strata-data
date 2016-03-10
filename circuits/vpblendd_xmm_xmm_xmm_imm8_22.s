  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_64_xmm3_xmm8_xmm9             #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label               
  movshdup %xmm3, %xmm5                         #  3     0xa   4      OPC=movshdup_xmm_xmm          
  vfnmsub132sd %xmm6, %xmm9, %xmm6              #  4     0xe   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  vmaxpd %xmm7, %xmm8, %xmm9                    #  5     0x13  4      OPC=vmaxpd_xmm_xmm_xmm        
  vpbroadcastq %xmm9, %xmm1                     #  6     0x17  5      OPC=vpbroadcastq_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1c  5      OPC=callq_label               
  retq                                          #  8     0x21  1      OPC=retq                      
                                                                                                    
.size target, .-target
