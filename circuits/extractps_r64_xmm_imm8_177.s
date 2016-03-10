  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vrsqrtps %xmm1, %xmm8             #  1     0     4      OPC=vrsqrtps_xmm_xmm        
  vunpcklps %xmm8, %xmm1, %xmm0     #  2     0x4   5      OPC=vunpcklps_xmm_xmm_xmm   
  pmovzxwd %xmm0, %xmm13            #  3     0x9   6      OPC=pmovzxwd_xmm_xmm        
  vpunpckhdq %xmm13, %xmm0, %xmm14  #  4     0xf   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm14, %ebx                 #  5     0x14  5      OPC=movd_r32_xmm            
  retq                              #  6     0x19  1      OPC=retq                    
                                                                                      
.size target, .-target
