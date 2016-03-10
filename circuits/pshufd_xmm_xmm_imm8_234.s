  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm10, %ymm10                     #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  3     0xa   5      OPC=callq_label           
  movq %xmm10, %r10                               #  4     0xf   5      OPC=movq_r64_xmm          
  callq .move_064_128_r10_r11_xmm1                #  5     0x14  5      OPC=callq_label           
  retq                                            #  6     0x19  1      OPC=retq                  
                                                                                                  
.size target, .-target
