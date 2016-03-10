  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vpmovsxwq %xmm1, %xmm3               #  1     0     5      OPC=vpmovsxwq_xmm_xmm   
  vcvttpd2dq %ymm3, %xmm2              #  2     0x5   4      OPC=vcvttpd2dq_xmm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label         
  movddup %xmm13, %xmm1                #  4     0xe   5      OPC=movddup_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
