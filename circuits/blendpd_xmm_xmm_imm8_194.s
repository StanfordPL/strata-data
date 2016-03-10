  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovhlps %xmm2, %xmm2, %xmm7  #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovdqa %ymm7, %ymm3          #  2     0x4  4      OPC=vmovdqa_ymm_ymm       
  movlhps %xmm3, %xmm1          #  3     0x8  3      OPC=movlhps_xmm_xmm       
  retq                          #  4     0xb  1      OPC=retq                  
                                                                               
.size target, .-target
