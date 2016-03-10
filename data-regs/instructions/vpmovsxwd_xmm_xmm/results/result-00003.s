  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vcvttpd2dq %xmm6, %xmm9                       #  2     0x5   4      OPC=vcvttpd2dq_xmm_xmm  
  pmovsxwd %xmm2, %xmm8                         #  3     0x9   6      OPC=pmovsxwd_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm1            #  4     0xf   5      OPC=callq_label         
  retq                                          #  5     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
