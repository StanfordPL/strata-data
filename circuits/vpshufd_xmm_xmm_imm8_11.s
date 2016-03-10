  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label             
  vzeroall                                        #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r10_r11_xmm1                #  3     0x8   5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm11, %xmm5                #  5     0x12  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovsldup %xmm1, %xmm9                          #  6     0x17  4      OPC=vmovsldup_xmm_xmm       
  vmovlhps %xmm9, %xmm5, %xmm12                   #  7     0x1b  5      OPC=vmovlhps_xmm_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1            #  8     0x20  5      OPC=callq_label             
  retq                                            #  9     0x25  1      OPC=retq                    
                                                                                                    
.size target, .-target
