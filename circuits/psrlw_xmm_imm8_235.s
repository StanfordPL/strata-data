  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm9, %xmm9, %xmm7                  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  cvtpd2dq %xmm7, %xmm11                          #  3     0xa   5      OPC=cvtpd2dq_xmm_xmm        
  pmovsxdq %xmm11, %xmm1                          #  4     0xf   6      OPC=pmovsxdq_xmm_xmm        
  retq                                            #  5     0x15  1      OPC=retq                    
                                                                                                    
.size target, .-target
