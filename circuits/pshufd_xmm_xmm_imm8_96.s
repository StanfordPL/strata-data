  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  movaps %xmm5, %xmm10                          #  2     0x5   4      OPC=movaps_xmm_xmm           
  movdqu %xmm2, %xmm7                           #  3     0x9   4      OPC=movdqu_xmm_xmm           
  vpunpcklqdq %xmm6, %xmm7, %xmm5               #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movapd %xmm10, %xmm7                          #  5     0x11  5      OPC=movapd_xmm_xmm           
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x16  5      OPC=callq_label              
  retq                                          #  7     0x1b  1      OPC=retq                     
                                                                                                   
.size target, .-target
