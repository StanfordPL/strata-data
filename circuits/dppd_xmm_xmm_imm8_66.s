  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm2  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  pmovzxdq %xmm2, %xmm1       #  2     0x4   5      OPC=pmovzxdq_xmm_xmm    
  vpmovzxbq %xmm2, %ymm7      #  3     0x9   5      OPC=vpmovzxbq_ymm_xmm   
  punpcklqdq %xmm7, %xmm1     #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
