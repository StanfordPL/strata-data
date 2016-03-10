  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movupd %xmm1, %xmm10             #  1     0     5      OPC=movupd_xmm_xmm          
  vunpckhps %xmm10, %xmm10, %xmm9  #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm10, %xmm9, %xmm6  #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %xmm9, %xmm6, %xmm1   #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movd %xmm1, %ebx                 #  5     0x14  4      OPC=movd_r32_xmm            
  retq                             #  6     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
