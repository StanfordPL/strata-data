  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm10, %xmm2, %xmm6                 #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsldup %xmm11, %xmm1                          #  3     0xa   5      OPC=movsldup_xmm_xmm        
  unpcklpd %xmm6, %xmm1                           #  4     0xf   4      OPC=unpcklpd_xmm_xmm        
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
