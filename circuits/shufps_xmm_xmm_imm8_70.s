  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminsd %xmm1, %xmm1, %xmm6  #  1     0     4      OPC=vminsd_xmm_xmm_xmm  
  vpmovzxdq %xmm6, %ymm9      #  2     0x4   5      OPC=vpmovzxdq_ymm_xmm   
  punpckhdq %xmm9, %xmm1      #  3     0x9   5      OPC=punpckhdq_xmm_xmm   
  punpcklqdq %xmm2, %xmm1     #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
