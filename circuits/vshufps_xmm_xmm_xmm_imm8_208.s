  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm3, %xmm6      #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  pmovzxdq %xmm2, %xmm4                #  3     0xa   5      OPC=pmovzxdq_xmm_xmm        
  vmovsldup %xmm4, %xmm3               #  4     0xf   4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_64_xmm3_xmm8_xmm9    #  5     0x13  5      OPC=callq_label             
  vunpckhpd %xmm4, %xmm6, %xmm2        #  6     0x18  4      OPC=vunpckhpd_xmm_xmm_xmm   
  vmovlhps %xmm2, %xmm8, %xmm1         #  7     0x1c  4      OPC=vmovlhps_xmm_xmm_xmm    
  retq                                 #  8     0x20  1      OPC=retq                    
                                                                                         
.size target, .-target
