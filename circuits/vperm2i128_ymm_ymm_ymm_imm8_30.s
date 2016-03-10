  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vcvtps2pd %xmm2, %ymm1  #  1     0     4      OPC=vcvtps2pd_ymm_xmm  
  movq %xmm1, %xmm8       #  2     0x4   5      OPC=movq_xmm_xmm       
  pmovzxbq %xmm8, %xmm2   #  3     0x9   6      OPC=pmovzxbq_xmm_xmm   
  vmovdqa %ymm2, %ymm1    #  4     0xf   4      OPC=vmovdqa_ymm_ymm    
  retq                    #  5     0x13  1      OPC=retq               
                                                                       
.size target, .-target
