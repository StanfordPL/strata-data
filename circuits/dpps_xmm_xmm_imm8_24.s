  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vxorps %xmm2, %xmm2, %xmm8                    #  1     0     4      OPC=vxorps_xmm_xmm_xmm       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vmulps %xmm2, %xmm4, %xmm13                   #  3     0x9   4      OPC=vmulps_xmm_xmm_xmm       
  vpunpckldq %xmm13, %xmm8, %xmm9               #  4     0xd   5      OPC=vpunpckldq_xmm_xmm_xmm   
  addsubps %xmm8, %xmm9                         #  5     0x12  5      OPC=addsubps_xmm_xmm         
  vpunpcklqdq %xmm8, %xmm8, %xmm8               #  6     0x17  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  7     0x1c  5      OPC=callq_label              
  retq                                          #  8     0x21  1      OPC=retq                     
                                                                                                   
.size target, .-target
