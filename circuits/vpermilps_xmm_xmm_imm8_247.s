  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm2                          #  1     0     4      OPC=vmovshdup_xmm_xmm      
  callq .move_128_064_xmm2_r12_r13                #  2     0x4   5      OPC=callq_label            
  vzeroall                                        #  3     0x9   3      OPC=vzeroall               
  callq .move_064_128_r12_r13_xmm1                #  4     0xc   5      OPC=callq_label            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label            
  vunpcklps %xmm9, %xmm11, %xmm8                  #  6     0x16  5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label            
  retq                                            #  8     0x20  1      OPC=retq                   
                                                                                                   
.size target, .-target
