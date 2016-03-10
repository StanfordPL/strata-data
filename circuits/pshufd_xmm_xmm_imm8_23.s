  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vdivss %xmm10, %xmm2, %xmm0                     #  2     0x5   5      OPC=vdivss_xmm_xmm_xmm       
  movss %xmm11, %xmm0                             #  3     0xa   5      OPC=movss_xmm_xmm            
  vpunpckldq %xmm2, %xmm9, %xmm13                 #  4     0xf   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %ymm13, %ymm0, %ymm8                #  5     0x13  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movdqu %xmm8, %xmm1                             #  6     0x18  5      OPC=movdqu_xmm_xmm           
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target
