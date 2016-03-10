  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm10                #  1     0     4      OPC=vmovddup_ymm_ymm         
  vandpd %ymm3, %ymm3, %ymm13           #  2     0x4   4      OPC=vandpd_ymm_ymm_ymm       
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpunpckhqdq %ymm13, %ymm10, %ymm1     #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  5     0x12  1      OPC=retq                     
                                                                                           
.size target, .-target
