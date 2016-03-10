  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm2, %xmm8                   #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  cvttpd2dq %xmm8, %xmm3                          #  2     0x4   5      OPC=cvttpd2dq_xmm_xmm      
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label            
  movdqu %xmm10, %xmm1                            #  4     0xe   5      OPC=movdqu_xmm_xmm         
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
