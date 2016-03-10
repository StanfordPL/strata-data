  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  xorq %r12, %r12                                 #  1     0     3      OPC=xorq_r64_r64      
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label       
  callq .read_cf_into_rbx                         #  3     0x8   5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm1                          #  4     0xd   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  5     0x13  5      OPC=callq_label       
  xorl %r9d, %ebx                                 #  6     0x18  3      OPC=xorl_r32_r32      
  retq                                            #  7     0x1b  1      OPC=retq              
                                                                                              
.size target, .-target
