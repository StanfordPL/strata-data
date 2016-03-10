  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                      
.target:                                #        0     0      OPC=<label>                 
  movsldup %xmm2, %xmm9                 #  1     0     5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm9, %xmm2, %xmm1        #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  vpunpckldq %xmm2, %xmm10, %xmm14      #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm  
  unpckhps %xmm14, %xmm1                #  5     0x13  4      OPC=unpckhps_xmm_xmm        
  retq                                  #  6     0x17  1      OPC=retq                    
                                                                                          
.size target, .-target
