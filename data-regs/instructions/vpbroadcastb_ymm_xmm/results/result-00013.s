  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastb %xmm2, %xmm3  #  1     0    5      OPC=vpbroadcastb_xmm_xmm  
  vmovdqa %ymm3, %ymm2       #  2     0x5  4      OPC=vmovdqa_ymm_ymm       
  vpbroadcastw %xmm2, %ymm1  #  3     0x9  5      OPC=vpbroadcastw_ymm_xmm  
  retq                       #  4     0xe  1      OPC=retq                  
                                                                            
.size target, .-target
