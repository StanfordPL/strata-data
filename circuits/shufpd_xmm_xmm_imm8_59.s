  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vmovapd %xmm2, %xmm0             #  1     0    4      OPC=vmovapd_xmm_xmm          
  vpunpckhqdq %ymm0, %ymm0, %ymm5  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpckhpd %xmm5, %xmm1            #  3     0x8  4      OPC=unpckhpd_xmm_xmm         
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
