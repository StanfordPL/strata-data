  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm2, %xmm10, %xmm13               #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movshdup %xmm13, %xmm8                          #  3     0x9   5      OPC=movshdup_xmm_xmm         
  vunpckhpd %xmm10, %xmm8, %xmm11                 #  4     0xe   5      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
