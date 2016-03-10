  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm2, %xmm10  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovdqu %ymm10, %ymm7             #  2     0x4  5      OPC=vmovdqu_ymm_ymm          
  punpcklqdq %xmm7, %xmm1           #  3     0x9  4      OPC=punpcklqdq_xmm_xmm       
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
