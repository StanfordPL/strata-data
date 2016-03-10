  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovdqu %xmm2, %xmm12             #  1     0     4      OPC=vmovdqu_xmm_xmm        
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label            
  callq .move_064_128_r10_r11_xmm2  #  3     0x9   5      OPC=callq_label            
  vunpckhps %xmm2, %xmm12, %xmm1    #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovddup %ymm1, %ymm8             #  5     0x12  4      OPC=vmovddup_ymm_ymm       
  vunpckhps %xmm8, %xmm1, %xmm1     #  6     0x16  5      OPC=vunpckhps_xmm_xmm_xmm  
  retq                              #  7     0x1b  1      OPC=retq                   
                                                                                     
.size target, .-target
