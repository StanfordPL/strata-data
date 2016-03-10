  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                
.target:                    #        0    0      OPC=<label>           
  vmovdqa %xmm1, %xmm11     #  1     0    4      OPC=vmovdqa_xmm_xmm   
  vmovdqa %ymm11, %ymm9     #  2     0x4  5      OPC=vmovdqa_ymm_ymm   
  vpor %xmm9, %xmm9, %xmm1  #  3     0x9  5      OPC=vpor_xmm_xmm_xmm  
  retq                      #  4     0xe  1      OPC=retq              
                                                                       
.size target, .-target
