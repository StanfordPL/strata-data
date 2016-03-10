  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  unpckhpd %xmm7, %xmm2                         #  2     0x5   4      OPC=unpckhpd_xmm_xmm         
  vpunpcklqdq %xmm3, %xmm2, %xmm8               #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vorps %ymm8, %ymm8, %ymm1                     #  4     0xd   5      OPC=vorps_ymm_ymm_ymm        
  retq                                          #  5     0x12  1      OPC=retq                     
                                                                                                   
.size target, .-target
