  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label              
  callq .move_064_128_r8_r9_xmm1      #  2     0x5   5      OPC=callq_label              
  callq .move_256_128_ymm2_xmm8_xmm9  #  3     0xa   5      OPC=callq_label              
  pandn %xmm3, %xmm3                  #  4     0xf   4      OPC=pandn_xmm_xmm            
  vhsubpd %ymm3, %ymm3, %ymm3         #  5     0x13  4      OPC=vhsubpd_ymm_ymm_ymm      
  vfmsub231sd %xmm3, %xmm3, %xmm1     #  6     0x17  5      OPC=vfmsub231sd_xmm_xmm_xmm  
  movaps %xmm9, %xmm1                 #  7     0x1c  4      OPC=movaps_xmm_xmm           
  retq                                #  8     0x20  1      OPC=retq                     
                                                                                         
.size target, .-target
