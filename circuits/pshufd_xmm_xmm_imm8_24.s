  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %xmm8        #  1     0     5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm8, %xmm2, %xmm12  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklps %xmm12, %xmm2, %xmm13  #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm   
  movupd %xmm13, %xmm1             #  4     0xf   5      OPC=movupd_xmm_xmm          
  retq                             #  5     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
