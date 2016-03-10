  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm10, %ymm1                         #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label        
  movq %xmm5, %rbx                                #  4     0xf   5      OPC=movq_r64_xmm       
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
