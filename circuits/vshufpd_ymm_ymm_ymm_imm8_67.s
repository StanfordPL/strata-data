  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label            
  vunpcklpd %ymm3, %ymm2, %ymm1     #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r10_r11  #  3     0x9   5      OPC=callq_label            
  movq %r11, %r8                    #  4     0xe   3      OPC=movq_r64_r64           
  callq .move_064_128_r8_r9_xmm1    #  5     0x11  5      OPC=callq_label            
  retq                              #  6     0x16  1      OPC=retq                   
                                                                                     
.size target, .-target
