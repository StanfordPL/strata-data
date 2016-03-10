  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  callq .move_64_128_xmm12_xmm13_xmm3  #  2     0x5   5      OPC=callq_label            
  vmovsldup %xmm3, %xmm14              #  3     0xa   4      OPC=vmovsldup_xmm_xmm      
  vmovd %ebx, %xmm11                   #  4     0xe   4      OPC=vmovd_xmm_r32          
  vunpcklps %ymm11, %ymm14, %ymm12     #  5     0x12  5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpcklpd %xmm13, %xmm12, %xmm1      #  6     0x17  5      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                 #  7     0x1c  1      OPC=retq                   
                                                                                        
.size target, .-target
