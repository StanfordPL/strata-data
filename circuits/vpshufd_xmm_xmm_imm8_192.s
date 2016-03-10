  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm13      #  1     0     5      OPC=vbroadcastss_ymm_xmm    
  vpbroadcastq %xmm13, %xmm1      #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckhdq %xmm2, %xmm1, %xmm2  #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm2, %xmm1         #  4     0xe   4      OPC=punpckhqdq_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
