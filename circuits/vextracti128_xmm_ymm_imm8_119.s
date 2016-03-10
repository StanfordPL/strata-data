  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmovups %xmm9, %xmm7                #  2     0x5   5      OPC=vmovups_xmm_xmm          
  vminss %xmm7, %xmm7, %xmm2          #  3     0xa   4      OPC=vminss_xmm_xmm_xmm       
  vfmsub132sd %xmm7, %xmm1, %xmm1     #  4     0xe   5      OPC=vfmsub132sd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11    #  5     0x13  5      OPC=callq_label              
  callq .move_064_128_r10_r11_xmm1    #  6     0x18  5      OPC=callq_label              
  retq                                #  7     0x1d  1      OPC=retq                     
                                                                                         
.size target, .-target
