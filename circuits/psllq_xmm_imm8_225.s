  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm1_r12_r13  #  1     0     5      OPC=callq_label         
  callq .move_064_128_r12_r13_xmm2  #  2     0x5   5      OPC=callq_label         
  vpandn %xmm2, %xmm1, %xmm6        #  3     0xa   4      OPC=vpandn_xmm_xmm_xmm  
  movddup %xmm6, %xmm1              #  4     0xe   4      OPC=movddup_xmm_xmm     
  cvtps2dq %xmm1, %xmm11            #  5     0x12  5      OPC=cvtps2dq_xmm_xmm    
  cvtpd2ps %xmm11, %xmm1            #  6     0x17  5      OPC=cvtpd2ps_xmm_xmm    
  retq                              #  7     0x1c  1      OPC=retq                
                                                                                  
.size target, .-target
