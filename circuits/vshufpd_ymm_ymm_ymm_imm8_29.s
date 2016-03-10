  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm14  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqa %ymm14, %ymm1             #  2     0x4  5      OPC=vmovdqa_ymm_ymm          
  movlhps %xmm3, %xmm1              #  3     0x9  3      OPC=movlhps_xmm_xmm          
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target
