  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vmovdqu %xmm2, %xmm14         #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vmovdqa %xmm3, %xmm10         #  2     0x4  4      OPC=vmovdqa_xmm_xmm     
  vmulpd %ymm10, %ymm14, %ymm1  #  3     0x8  5      OPC=vmulpd_ymm_ymm_ymm  
  retq                          #  4     0xd  1      OPC=retq                
                                                                             
.size target, .-target
