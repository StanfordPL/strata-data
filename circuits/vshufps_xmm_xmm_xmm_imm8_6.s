  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm3, %xmm3                           #  2     0x5   4      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm9, %xmm10, %xmm2                 #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklpd %xmm3, %xmm2, %xmm1                   #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                                            #  5     0x12  1      OPC=retq                    
                                                                                                    
.size target, .-target
