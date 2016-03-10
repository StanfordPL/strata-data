  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movq %xmm11, %rbx                               #  2     0x5   5      OPC=movq_r64_xmm       
  vpmovzxwq %xmm11, %ymm10                        #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm2             #  4     0xf   5      OPC=callq_label        
  callq .move_128_064_xmm2_r8_r9                  #  5     0x14  5      OPC=callq_label        
  xchgl %ebx, %r8d                                #  6     0x19  3      OPC=xchgl_r32_r32      
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
