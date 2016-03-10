  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vmovlhps %xmm2, %xmm2, %xmm11                 #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm     
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  vbroadcastss %xmm6, %xmm1                     #  3     0x9   5      OPC=vbroadcastss_xmm_xmm     
  vpunpckhdq %xmm2, %xmm1, %xmm4                #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhqdq %xmm4, %xmm11, %xmm1              #  5     0x12  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target