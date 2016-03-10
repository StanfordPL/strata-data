  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovss %xmm11, %xmm2, %xmm6                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm6, %xmm9, %xmm1                  #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovddup %ymm6, %ymm3                           #  4     0xe   4      OPC=vmovddup_ymm_ymm        
  punpckldq %xmm3, %xmm1                          #  5     0x12  4      OPC=punpckldq_xmm_xmm       
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target
