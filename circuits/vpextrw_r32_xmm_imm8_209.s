  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1                        #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  movq %xmm6, %r11                              #  3     0xa   5      OPC=movq_r64_xmm       
  popcntq %r11, %rbx                            #  4     0xf   5      OPC=popcntq_r64_r64    
  xaddw %bx, %r11w                              #  5     0x14  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
