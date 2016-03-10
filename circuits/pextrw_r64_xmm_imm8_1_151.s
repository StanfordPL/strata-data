  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm1                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r10_r11                #  3     0xa   5      OPC=callq_label        
  cvtsd2sil %xmm1, %ebx                           #  4     0xf   4      OPC=cvtsd2sil_r32_xmm  
  xchgl %r11d, %ebx                               #  5     0x13  3      OPC=xchgl_r32_r32      
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
