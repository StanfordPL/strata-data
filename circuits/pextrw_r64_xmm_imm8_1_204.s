  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                 
.target:                                          #        0    0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label        
  vpmovzxwq %xmm10, %xmm2                         #  2     0x5  5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm2, %rbx                               #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                                            #  4     0xf  1      OPC=retq               
                                                                                              
.size target, .-target