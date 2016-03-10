  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label            
  vzeroall                          #  2     0x5   3      OPC=vzeroall               
  vcvtss2sd %xmm6, %xmm8, %xmm14    #  3     0x8   4      OPC=vcvtss2sd_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm3  #  4     0xc   5      OPC=callq_label            
  vaddsubpd %xmm14, %xmm3, %xmm1    #  5     0x11  5      OPC=vaddsubpd_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  6     0x16  5      OPC=callq_label            
  retq                              #  7     0x1b  1      OPC=retq                   
                                                                                     
.size target, .-target
