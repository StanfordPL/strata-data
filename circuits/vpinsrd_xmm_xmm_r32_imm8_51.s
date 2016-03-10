  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11              #  1     0     5      OPC=callq_label      
  vzeroall                                      #  2     0x5   3      OPC=vzeroall         
  callq .move_064_128_r10_r11_xmm3              #  3     0x8   5      OPC=callq_label      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label      
  vmovd %ebx, %xmm7                             #  5     0x12  4      OPC=vmovd_xmm_r32    
  vmovaps %xmm2, %xmm1                          #  6     0x16  4      OPC=vmovaps_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1a  5      OPC=callq_label      
  retq                                          #  8     0x1f  1      OPC=retq             
                                                                                           
.size target, .-target
