  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_128_064_xmm3_r12_r13    #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r8_r9      #  2     0x5   5      OPC=callq_label         
  vzeroall                            #  3     0xa   3      OPC=vzeroall            
  callq .move_064_128_r12_r13_xmm1    #  4     0xd   5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm8_xmm9  #  5     0x12  5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm1      #  6     0x17  5      OPC=callq_label         
  vsubps %ymm8, %ymm1, %ymm5          #  7     0x1c  5      OPC=vsubps_ymm_ymm_ymm  
  vminps %ymm5, %ymm5, %ymm1          #  8     0x21  4      OPC=vminps_ymm_ymm_ymm  
  retq                                #  9     0x25  1      OPC=retq                
                                                                                    
.size target, .-target
