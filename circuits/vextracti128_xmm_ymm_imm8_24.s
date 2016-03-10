  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vorpd %ymm1, %ymm1, %ymm14  #  1     0    4      OPC=vorpd_ymm_ymm_ymm  
  vmovdqa %xmm14, %xmm1       #  2     0x4  5      OPC=vmovdqa_xmm_xmm    
  retq                        #  3     0x9  1      OPC=retq               
                                                                          
.size target, .-target
