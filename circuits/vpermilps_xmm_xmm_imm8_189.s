  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vmovupd %xmm2, %xmm3                 #  1     0     4      OPC=vmovupd_xmm_xmm        
  vmovshdup %xmm2, %xmm1               #  2     0x4   4      OPC=vmovshdup_xmm_xmm      
  vmovsldup %xmm3, %xmm11              #  3     0x8   4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_64_xmm1_xmm12_xmm13  #  4     0xc   5      OPC=callq_label            
  vunpcklps %xmm13, %xmm12, %xmm10     #  5     0x11  5      OPC=vunpcklps_xmm_xmm_xmm  
  vorps %xmm10, %xmm12, %xmm1          #  6     0x16  5      OPC=vorps_xmm_xmm_xmm      
  vunpckhps %ymm11, %ymm3, %ymm2       #  7     0x1b  5      OPC=vunpckhps_ymm_ymm_ymm  
  vunpckhpd %xmm2, %xmm1, %xmm1        #  8     0x20  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                                 #  9     0x24  1      OPC=retq                   
                                                                                        
.size target, .-target
