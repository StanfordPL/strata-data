  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm15  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movlhps %xmm15, %xmm15            #  2     0x4  4      OPC=movlhps_xmm_xmm          
  vmovdqu %ymm15, %ymm1             #  3     0x8  5      OPC=vmovdqu_ymm_ymm          
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
