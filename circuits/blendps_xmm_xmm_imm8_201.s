  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm10          #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vunpckhps %xmm10, %xmm1, %xmm10  #  2     0x4   5      OPC=vunpckhps_xmm_xmm_xmm  
  movss %xmm2, %xmm1               #  3     0x9   4      OPC=movss_xmm_xmm          
  vmovdqu %ymm10, %ymm12           #  4     0xd   5      OPC=vmovdqu_ymm_ymm        
  movlhps %xmm12, %xmm1            #  5     0x12  4      OPC=movlhps_xmm_xmm        
  retq                             #  6     0x16  1      OPC=retq                   
                                                                                    
.size target, .-target
