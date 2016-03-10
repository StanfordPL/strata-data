  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  vpmovzxdq %xmm1, %ymm14   #  1     0    5      OPC=vpmovzxdq_ymm_xmm  
  vmovshdup %ymm14, %ymm12  #  2     0x5  5      OPC=vmovshdup_ymm_ymm  
  movsldup %xmm12, %xmm1    #  3     0xa  5      OPC=movsldup_xmm_xmm   
  retq                      #  4     0xf  1      OPC=retq               
                                                                        
.size target, .-target
