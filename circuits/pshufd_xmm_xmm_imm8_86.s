  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovss %xmm6, %xmm2, %xmm12                   #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm     
  vmovdqu %xmm5, %xmm7                          #  3     0x9   4      OPC=vmovdqu_xmm_xmm        
  vunpcklps %ymm7, %ymm7, %ymm13                #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x11  5      OPC=callq_label            
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
