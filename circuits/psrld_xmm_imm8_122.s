  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vpmovzxbq %xmm1, %xmm12       #  1     0     5      OPC=vpmovzxbq_xmm_xmm    
  vmovshdup %ymm12, %ymm2       #  2     0x5   5      OPC=vmovshdup_ymm_ymm    
  vsqrtsd %xmm2, %xmm12, %xmm6  #  3     0xa   4      OPC=vsqrtsd_xmm_xmm_xmm  
  movq %xmm6, %xmm1             #  4     0xe   4      OPC=movq_xmm_xmm         
  retq                          #  5     0x12  1      OPC=retq                 
                                                                               
.size target, .-target
