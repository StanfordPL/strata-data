  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                      
.target:                               #        0    0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0    5      OPC=callq_label             
  vpunpckldq %xmm13, %xmm2, %xmm1      #  2     0x5  5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhpd %xmm1, %xmm2, %xmm1        #  3     0xa  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                                 #  4     0xe  1      OPC=retq                    
                                                                                        
.size target, .-target
