  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label             
  callq .move_064_128_r10_r11_xmm2  #  2     0x5   5      OPC=callq_label             
  movd %r11d, %xmm15                #  3     0xa   5      OPC=movd_xmm_r32            
  vpunpckldq %xmm2, %xmm15, %xmm0   #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpbroadcastq %xmm0, %xmm1         #  5     0x13  5      OPC=vpbroadcastq_xmm_xmm    
  retq                              #  6     0x18  1      OPC=retq                    
                                                                                      
.size target, .-target
