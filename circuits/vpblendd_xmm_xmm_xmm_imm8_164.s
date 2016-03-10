  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  punpckhqdq %xmm2, %xmm3            #  2     0x5   4      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %xmm8, %xmm2, %xmm5    #  3     0x9   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm3, %xmm10         #  4     0xe   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckhdq %xmm2, %xmm10, %xmm8    #  5     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vmovsd %xmm5, %xmm8, %xmm1         #  6     0x17  4      OPC=vmovsd_xmm_xmm_xmm       
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
