  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpxor %xmm4, %xmm4, %xmm3            #  2     0x5   4      OPC=vpxor_xmm_xmm_xmm       
  unpcklps %xmm13, %xmm1               #  3     0x9   4      OPC=unpcklps_xmm_xmm        
  vpunpckldq %xmm1, %xmm3, %xmm4       #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vpaddq %xmm4, %xmm4, %xmm14          #  5     0x11  4      OPC=vpaddq_xmm_xmm_xmm      
  vorps %xmm14, %xmm14, %xmm15         #  6     0x15  5      OPC=vorps_xmm_xmm_xmm       
  movapd %xmm15, %xmm1                 #  7     0x1a  5      OPC=movapd_xmm_xmm          
  retq                                 #  8     0x1f  1      OPC=retq                    
                                                                                         
.size target, .-target
