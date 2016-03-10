  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmaxss %xmm8, %xmm2, %xmm5         #  2     0x5   5      OPC=vmaxss_xmm_xmm_xmm  
  vcvtpd2dq %ymm5, %xmm12            #  3     0xa   4      OPC=vcvtpd2dq_xmm_ymm   
  movdqu %xmm12, %xmm1               #  4     0xe   5      OPC=movdqu_xmm_xmm      
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
