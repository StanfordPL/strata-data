  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxwd %xmm2, %ymm6  #  1     0    5      OPC=vpmovsxwd_ymm_xmm  
  vmovdqa %ymm6, %ymm8    #  2     0x5  4      OPC=vmovdqa_ymm_ymm    
  vpmovsxwd %xmm8, %ymm1  #  3     0x9  5      OPC=vpmovsxwd_ymm_xmm  
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
