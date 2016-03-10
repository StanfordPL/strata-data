  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm11               #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  orpd %xmm2, %xmm11                   #  3     0x9   5      OPC=orpd_xmm_xmm             
  vpunpckhqdq %ymm3, %ymm11, %ymm1     #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
