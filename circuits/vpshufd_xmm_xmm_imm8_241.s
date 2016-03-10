  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label             
  vzeroall                                        #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm1                  #  3     0x8   5      OPC=callq_label             
  vmovshdup %ymm1, %ymm3                          #  4     0xd   4      OPC=vmovshdup_ymm_ymm       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label             
  vpunpckldq %xmm1, %xmm1, %xmm9                  #  6     0x16  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1a  5      OPC=callq_label             
  retq                                            #  8     0x1f  1      OPC=retq                    
                                                                                                    
.size target, .-target
