  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movdqa %xmm2, %xmm15                          #  2     0x5   5      OPC=movdqa_xmm_xmm          
  vpunpckldq %xmm3, %xmm15, %xmm11              #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm6                        #  4     0xe   5      OPC=unpcklpd_xmm_xmm        
  vunpckhpd %xmm11, %xmm6, %xmm1                #  5     0x13  5      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                                          #  6     0x18  1      OPC=retq                    
                                                                                                  
.size target, .-target
