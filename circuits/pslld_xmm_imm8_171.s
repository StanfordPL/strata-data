  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxdq %xmm1, %xmm4      #  1     0    5      OPC=vpmovzxdq_xmm_xmm   
  vsubpd %ymm4, %ymm4, %ymm8  #  2     0x5  4      OPC=vsubpd_ymm_ymm_ymm  
  pmovzxbd %xmm8, %xmm1       #  3     0x9  6      OPC=pmovzxbd_xmm_xmm    
  retq                        #  4     0xf  1      OPC=retq                
                                                                           
.size target, .-target
