  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovdqa %ymm1, %ymm0              #  1     0     4      OPC=vmovdqa_ymm_ymm          
  vbroadcastss %xmm0, %ymm11        #  2     0x4   5      OPC=vbroadcastss_ymm_xmm     
  movlhps %xmm1, %xmm11             #  3     0x9   4      OPC=movlhps_xmm_xmm          
  vpunpckhqdq %xmm1, %xmm11, %xmm1  #  4     0xd   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
