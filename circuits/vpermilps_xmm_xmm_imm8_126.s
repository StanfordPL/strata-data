  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label            
  vzeroall                           #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r10_r11_xmm1   #  3     0x8   5      OPC=callq_label            
  callq .move_128_64_xmm1_xmm8_xmm9  #  4     0xd   5      OPC=callq_label            
  vunpcklps %xmm1, %xmm9, %xmm14     #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm  
  punpckhdq %xmm14, %xmm1            #  6     0x16  5      OPC=punpckhdq_xmm_xmm      
  retq                               #  7     0x1b  1      OPC=retq                   
                                                                                      
.size target, .-target
