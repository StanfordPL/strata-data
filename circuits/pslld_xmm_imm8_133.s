  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm10_xmm11             #  1     0     5      OPC=callq_label         
  vpandn %xmm10, %xmm1, %xmm2                     #  2     0x5   5      OPC=vpandn_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label         
  cvtpd2dq %xmm9, %xmm1                           #  4     0xf   5      OPC=cvtpd2dq_xmm_xmm    
  retq                                            #  5     0x14  1      OPC=retq                
                                                                                                
.size target, .-target
