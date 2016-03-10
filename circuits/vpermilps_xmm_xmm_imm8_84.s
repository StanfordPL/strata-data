  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxdq %xmm2, %ymm6      #  1     0    5      OPC=vpmovzxdq_ymm_xmm   
  vmovsldup %ymm6, %ymm7      #  2     0x5  4      OPC=vmovsldup_ymm_ymm   
  vmovsd %xmm2, %xmm7, %xmm1  #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
