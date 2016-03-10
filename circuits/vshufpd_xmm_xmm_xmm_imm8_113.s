  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovsd %xmm2, %xmm2, %xmm12       #  1     0    4      OPC=vmovsd_xmm_xmm_xmm       
  vpbroadcastq %xmm3, %xmm1         #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm     
  vpunpckhqdq %ymm1, %ymm12, %ymm1  #  3     0x9  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
