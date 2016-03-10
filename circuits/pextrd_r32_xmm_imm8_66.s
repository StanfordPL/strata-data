  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm8, %xmm1, %xmm11    #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm8, %xmm11, %xmm2     #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm   
  pmovsxdq %xmm2, %xmm4              #  4     0xf   5      OPC=pmovsxdq_xmm_xmm        
  movdqu %xmm4, %xmm6                #  5     0x14  4      OPC=movdqu_xmm_xmm          
  movd %xmm6, %ebx                   #  6     0x18  4      OPC=movd_r32_xmm            
  retq                               #  7     0x1c  1      OPC=retq                    
                                                                                       
.size target, .-target
