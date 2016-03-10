  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movq %xmm1, %xmm13                              #  1     0     5      OPC=movq_xmm_xmm       
  vpmovzxdq %xmm13, %ymm3                         #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  vmovq %xmm10, %rbx                              #  4     0xf   5      OPC=vmovq_r64_xmm      
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
