  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm11, %xmm3                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vmovshdup %ymm3, %ymm5                          #  3     0xa   4      OPC=vmovshdup_ymm_ymm   
  movq %xmm3, %rbx                                #  4     0xe   5      OPC=movq_r64_xmm        
  vmovss %xmm5, %xmm3, %xmm1                      #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13                #  6     0x17  5      OPC=callq_label         
  xaddw %bx, %r13w                                #  7     0x1c  5      OPC=xaddw_r16_r16       
  retq                                            #  8     0x21  1      OPC=retq                
                                                                                                
.size target, .-target
