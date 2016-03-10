  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  vmulpd %xmm3, %xmm2, %xmm3        #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label          
  vzeroall                          #  3     0x9   3      OPC=vzeroall             
  callq .move_064_128_r10_r11_xmm2  #  4     0xc   5      OPC=callq_label          
  vhaddpd %ymm10, %ymm2, %ymm1      #  5     0x11  5      OPC=vhaddpd_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                 
                                                                                   
.size target, .-target
