  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  pmovzxwd %xmm2, %xmm3   #  1     0    5      OPC=pmovzxwd_xmm_xmm   
  vpmovzxdq %xmm3, %ymm4  #  2     0x5  5      OPC=vpmovzxdq_ymm_xmm  
  vmovupd %ymm4, %ymm1    #  3     0xa  4      OPC=vmovupd_ymm_ymm    
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
