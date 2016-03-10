  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movsldup %xmm1, %xmm8             #  1     0     5      OPC=movsldup_xmm_xmm        
  movddup %xmm1, %xmm14             #  2     0x5   5      OPC=movddup_xmm_xmm         
  vxorps %xmm14, %xmm8, %xmm12      #  3     0xa   5      OPC=vxorps_xmm_xmm_xmm      
  vpbroadcastd %xmm2, %xmm8         #  4     0xf   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm12, %xmm8, %xmm13  #  5     0x14  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhpd %xmm13, %xmm1, %xmm13   #  6     0x19  5      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovsldup %ymm13, %ymm7           #  7     0x1e  5      OPC=vmovsldup_ymm_ymm       
  movdqa %xmm7, %xmm1               #  8     0x23  4      OPC=movdqa_xmm_xmm          
  retq                              #  9     0x27  1      OPC=retq                    
                                                                                      
.size target, .-target
