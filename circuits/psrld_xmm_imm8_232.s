  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  cvtpd2dq %xmm1, %xmm12                          #  1     0     5      OPC=cvtpd2dq_xmm_xmm         
  vhsubps %xmm1, %xmm1, %xmm13                    #  2     0x5   4      OPC=vhsubps_xmm_xmm_xmm      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %xmm12, %xmm13, %xmm13              #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpckhqdq %xmm9, %xmm13                        #  5     0x13  5      OPC=punpckhqdq_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1             #  6     0x18  5      OPC=callq_label              
  unpckhpd %xmm12, %xmm1                          #  7     0x1d  5      OPC=unpckhpd_xmm_xmm         
  retq                                            #  8     0x22  1      OPC=retq                     
                                                                                                     
.size target, .-target
