  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                
.target:                    #        0    0      OPC=<label>           
  vmovdqa %ymm2, %ymm4      #  1     0    4      OPC=vmovdqa_ymm_ymm   
  vpor %ymm4, %ymm4, %ymm1  #  2     0x4  4      OPC=vpor_ymm_ymm_ymm  
  movups %xmm3, %xmm1       #  3     0x8  3      OPC=movups_xmm_xmm    
  retq                      #  4     0xb  1      OPC=retq              
                                                                       
.size target, .-target
