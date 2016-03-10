  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  punpcklwd %xmm3, %xmm2       #  1     0    4      OPC=punpcklwd_xmm_xmm   
  vpmovzxdq %xmm2, %ymm11      #  2     0x4  5      OPC=vpmovzxdq_ymm_xmm   
  vmovss %xmm11, %xmm2, %xmm1  #  3     0x9  5      OPC=vmovss_xmm_xmm_xmm  
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
