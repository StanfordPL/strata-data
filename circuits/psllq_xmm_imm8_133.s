  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %xmm14   #  1     0     5      OPC=vpmovzxdq_xmm_xmm  
  vmovshdup %ymm14, %ymm14  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  pmovzxwd %xmm14, %xmm10   #  3     0xa   6      OPC=pmovzxwd_xmm_xmm   
  cvtdq2pd %xmm10, %xmm1    #  4     0x10  5      OPC=cvtdq2pd_xmm_xmm   
  retq                      #  5     0x15  1      OPC=retq               
                                                                         
.size target, .-target
