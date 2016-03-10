  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm11  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movhlps %xmm11, %xmm2             #  2     0x4  4      OPC=movhlps_xmm_xmm          
  vmovups %ymm2, %ymm1              #  3     0x8  4      OPC=vmovups_ymm_ymm          
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target
