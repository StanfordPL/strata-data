  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovss %xmm3, %xmm2, %xmm1        #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9    #  2     0x4   5      OPC=callq_label         
  callq .move_128_064_xmm3_r12_r13  #  3     0x9   5      OPC=callq_label         
  xorl %r9d, %r13d                  #  4     0xe   3      OPC=xorl_r32_r32        
  callq .move_128_064_xmm1_r8_r9    #  5     0x11  5      OPC=callq_label         
  xorq %r13, %r9                    #  6     0x16  3      OPC=xorq_r64_r64        
  callq .move_064_128_r8_r9_xmm1    #  7     0x19  5      OPC=callq_label         
  retq                              #  8     0x1e  1      OPC=retq                
                                                                                  
.size target, .-target
