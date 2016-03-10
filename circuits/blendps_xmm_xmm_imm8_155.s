  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vmovapd %xmm2, %xmm0                 #  2     0x5   4      OPC=vmovapd_xmm_xmm         
  movsldup %xmm1, %xmm15               #  3     0x9   5      OPC=movsldup_xmm_xmm        
  hsubpd %xmm12, %xmm1                 #  4     0xe   5      OPC=hsubpd_xmm_xmm          
  vpunpckhdq %xmm0, %xmm15, %xmm4      #  5     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpckhpd %xmm4, %xmm1                #  6     0x17  4      OPC=unpckhpd_xmm_xmm        
  retq                                 #  7     0x1b  1      OPC=retq                    
                                                                                         
.size target, .-target
