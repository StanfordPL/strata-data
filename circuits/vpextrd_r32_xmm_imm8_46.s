  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  movsldup %xmm1, %xmm14           #  1     0    5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm14, %xmm1, %xmm6  #  2     0x5  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm6, %ebx                 #  3     0xa  4      OPC=movd_r32_xmm            
  retq                             #  4     0xe  1      OPC=retq                    
                                                                                    
.size target, .-target
