  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpxor %ymm4, %ymm4, %ymm6        #  1     0     4      OPC=vpxor_ymm_ymm_ymm       
  vsubss %xmm6, %xmm6, %xmm15      #  2     0x4   4      OPC=vsubss_xmm_xmm_xmm      
  movshdup %xmm1, %xmm1            #  3     0x8   4      OPC=movshdup_xmm_xmm        
  vpunpckhdq %xmm15, %xmm1, %xmm4  #  4     0xc   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm4, %ebx                 #  5     0x11  4      OPC=movd_r32_xmm            
  retq                             #  6     0x15  1      OPC=retq                    
                                                                                     
.size target, .-target
