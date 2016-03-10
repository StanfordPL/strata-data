  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  vpmovzxdq %xmm2, %ymm13   #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  vmovsldup %xmm13, %xmm12  #  2     0x5  5      OPC=vmovsldup_xmm_xmm  
  unpckhpd %xmm12, %xmm1    #  3     0xa  5      OPC=unpckhpd_xmm_xmm   
  retq                      #  4     0xf  1      OPC=retq               
                                                                        
.size target, .-target
