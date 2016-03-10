  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %xmm2                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  3     0xa   5      OPC=callq_label        
  popcntl %r9d, %ebx                              #  4     0xf   5      OPC=popcntl_r32_r32    
  cmovnel %r9d, %ebx                              #  5     0x14  4      OPC=cmovnel_r32_r32    
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
