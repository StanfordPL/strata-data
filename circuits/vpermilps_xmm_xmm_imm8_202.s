  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movddup %xmm2, %xmm13                #  2     0x5   5      OPC=movddup_xmm_xmm         
  vpunpckhdq %xmm13, %xmm2, %xmm7      #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklps %xmm11, %xmm7               #  4     0xf   4      OPC=unpcklps_xmm_xmm        
  movq %xmm7, %xmm12                   #  5     0x13  5      OPC=movq_xmm_xmm            
  vorpd %xmm12, %xmm7, %xmm1           #  6     0x18  5      OPC=vorpd_xmm_xmm_xmm       
  retq                                 #  7     0x1d  1      OPC=retq                    
                                                                                         
.size target, .-target
