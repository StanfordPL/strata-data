  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %xmm2, %xmm12            #  1     0     4      OPC=vmovddup_xmm_xmm         
  vpunpckhqdq %ymm12, %ymm2, %ymm3  #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm2, %ymm3, %ymm1   #  3     0x9   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movlhps %xmm3, %xmm1              #  4     0xd   3      OPC=movlhps_xmm_xmm          
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
