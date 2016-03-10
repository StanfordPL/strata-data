  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpmovzxwd %xmm1, %ymm7      #  1     0    5      OPC=vpmovzxwd_ymm_xmm   
  vsubps %ymm7, %ymm7, %ymm9  #  2     0x5  4      OPC=vsubps_ymm_ymm_ymm  
  pmovzxwq %xmm9, %xmm1       #  3     0x9  6      OPC=pmovzxwq_xmm_xmm    
  retq                        #  4     0xf  1      OPC=retq                
                                                                           
.size target, .-target
