  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmovss %xmm9, %xmm9, %xmm3          #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11    #  3     0xa   5      OPC=callq_label         
  vzeroall                            #  4     0xf   3      OPC=vzeroall            
  callq .move_064_128_r10_r11_xmm1    #  5     0x12  5      OPC=callq_label         
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
