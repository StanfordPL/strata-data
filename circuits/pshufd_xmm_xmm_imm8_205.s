  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm3        #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  movshdup %xmm2, %xmm2            #  2     0x5   4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm2, %xmm2, %xmm11  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm11, %xmm3, %xmm7   #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm   
  vmovss %xmm2, %xmm7, %xmm2       #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm      
  movdqa %xmm2, %xmm1              #  6     0x16  4      OPC=movdqa_xmm_xmm          
  retq                             #  7     0x1a  1      OPC=retq                    
                                                                                     
.size target, .-target
