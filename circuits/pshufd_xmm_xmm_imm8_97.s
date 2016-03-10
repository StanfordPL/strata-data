  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  pmovzxdq %xmm2, %xmm15           #  1     0     6      OPC=pmovzxdq_xmm_xmm        
  vpunpckhdq %xmm2, %xmm15, %xmm5  #  2     0x6   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklps %xmm2, %xmm5            #  3     0xa   3      OPC=unpcklps_xmm_xmm        
  movapd %xmm5, %xmm1              #  4     0xd   4      OPC=movapd_xmm_xmm          
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
