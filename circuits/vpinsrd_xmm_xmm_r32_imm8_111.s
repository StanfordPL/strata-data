  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movd %ebx, %xmm3                                #  2     0x5   4      OPC=movd_xmm_r32             
  vpunpckldq %xmm3, %xmm10, %xmm9                 #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm9, %xmm2, %xmm1                 #  4     0xd   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
