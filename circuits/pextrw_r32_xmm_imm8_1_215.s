  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpmovsxdq %xmm11, %xmm6                         #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm     
  vpmovzxwq %xmm6, %ymm14                         #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm     
  vrsqrtss %xmm1, %xmm14, %xmm1                   #  4     0xf   4      OPC=vrsqrtss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  5     0x13  5      OPC=callq_label           
  movzwl %r9w, %ebx                               #  6     0x18  4      OPC=movzwl_r32_r16        
  retq                                            #  7     0x1c  1      OPC=retq                  
                                                                                                  
.size target, .-target
