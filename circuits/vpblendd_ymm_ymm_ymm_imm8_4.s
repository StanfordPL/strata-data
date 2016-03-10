  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmovsldup %ymm3, %ymm11                       #  1     0     4      OPC=vmovsldup_ymm_ymm      
  vmovapd %ymm2, %ymm1                          #  2     0x4   4      OPC=vmovapd_ymm_ymm        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label            
  vunpckhps %xmm1, %xmm11, %xmm6                #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
