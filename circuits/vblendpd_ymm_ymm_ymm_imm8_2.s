  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovups %ymm2, %ymm1              #  1     0    4      OPC=vmovups_ymm_ymm          
  vpunpckhqdq %ymm3, %ymm3, %ymm14  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movlhps %xmm14, %xmm1             #  3     0x8  4      OPC=movlhps_xmm_xmm          
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target
