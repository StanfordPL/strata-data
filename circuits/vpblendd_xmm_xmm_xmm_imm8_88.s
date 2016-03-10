  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm12          #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm3, %xmm12, %xmm13  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm2, %xmm13              #  3     0x8   5      OPC=movsd_xmm_xmm          
  vmovdqu %ymm13, %ymm1            #  4     0xd   5      OPC=vmovdqu_ymm_ymm        
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
