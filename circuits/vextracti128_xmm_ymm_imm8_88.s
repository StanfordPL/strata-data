  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpbroadcastq %xmm1, %xmm7         #  1     0    5      OPC=vpbroadcastq_xmm_xmm     
  vmovupd %ymm1, %ymm14             #  2     0x5  4      OPC=vmovupd_ymm_ymm          
  vpunpckhqdq %xmm14, %xmm7, %xmm1  #  3     0x9  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
