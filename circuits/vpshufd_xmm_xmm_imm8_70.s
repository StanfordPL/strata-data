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
  callq .move_128_64_xmm1_xmm12_xmm13             #  4     0xd   5      OPC=callq_label      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  5     0x12  5      OPC=callq_label      
  movss %xmm10, %xmm1                             #  6     0x17  5      OPC=movss_xmm_xmm    
  movlhps %xmm12, %xmm1                           #  7     0x1c  4      OPC=movlhps_xmm_xmm  
  retq                                            #  8     0x20  1      OPC=retq             
                                                                                             
.size target, .-target
