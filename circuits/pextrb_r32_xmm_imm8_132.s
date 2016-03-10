  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  xorq %rbx, %rbx                               #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label        
  vpmovzxbq %xmm5, %xmm2                        #  3     0x8   5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  4     0xd   5      OPC=callq_label        
  xchgb %r10b, %bl                              #  5     0x12  3      OPC=xchgb_r8_r8        
  retq                                          #  6     0x15  1      OPC=retq               
                                                                                             
.size target, .-target
