  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm10, %ymm2                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  3     0xa   5      OPC=callq_label        
  xorl %ebx, %ebx                                 #  4     0xf   2      OPC=xorl_r32_r32       
  addl %r9d, %ebx                                 #  5     0x11  3      OPC=addl_r32_r32       
  retq                                            #  6     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
