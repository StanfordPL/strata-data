  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                
.target:                    #        0    0      OPC=<label>           
  vmovddup %ymm2, %ymm7     #  1     0    4      OPC=vmovddup_ymm_ymm  
  movdqa %xmm2, %xmm7       #  2     0x4  4      OPC=movdqa_xmm_xmm    
  vpor %ymm7, %ymm7, %ymm1  #  3     0x8  4      OPC=vpor_ymm_ymm_ymm  
  retq                      #  4     0xc  1      OPC=retq              
                                                                       
.size target, .-target
