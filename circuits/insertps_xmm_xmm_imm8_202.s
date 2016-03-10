  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm11              #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vmovddup %xmm7, %xmm3                         #  3     0x9   4      OPC=vmovddup_xmm_xmm         
  vunpcklps %xmm11, %xmm3, %xmm7                #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm    
  pmovzxdq %xmm7, %xmm1                         #  5     0x12  5      OPC=pmovzxdq_xmm_xmm         
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
