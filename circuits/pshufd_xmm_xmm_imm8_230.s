  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vunpcklps %xmm5, %xmm6, %xmm11                #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %ymm11, %ymm11, %ymm8             #  3     0x9   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqa %xmm8, %xmm4                           #  4     0xe   5      OPC=movdqa_xmm_xmm           
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
