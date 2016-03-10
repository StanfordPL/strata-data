  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r10_r11              #  1     0     5      OPC=callq_label               
  vzeroall                                      #  2     0x5   3      OPC=vzeroall                  
  callq .move_064_128_r10_r11_xmm1              #  3     0x8   5      OPC=callq_label               
  vpbroadcastd %xmm1, %xmm8                     #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm      
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label               
  vfnmadd213pd %ymm8, %ymm1, %ymm9              #  6     0x17  5      OPC=vfnmadd213pd_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1            #  7     0x1c  5      OPC=callq_label               
  retq                                          #  8     0x21  1      OPC=retq                      
                                                                                                    
.size target, .-target
