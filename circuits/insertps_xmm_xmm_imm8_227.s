  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %xmm2, %xmm10, %xmm10    #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpckhdq %xmm1, %xmm10, %xmm3      #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  cvtpd2dq %xmm10, %xmm1               #  4     0xd   5      OPC=cvtpd2dq_xmm_xmm         
  punpckhqdq %xmm3, %xmm1              #  5     0x12  4      OPC=punpckhqdq_xmm_xmm       
  retq                                 #  6     0x16  1      OPC=retq                     
                                                                                          
.size target, .-target
