  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                 
.target:                                        #        0    0      OPC=<label>            
  vpmovzxbq %xmm1, %xmm3                        #  1     0    5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5  5      OPC=callq_label        
  movzbq %r12b, %rbx                            #  3     0xa  4      OPC=movzbq_r64_r8      
  retq                                          #  4     0xe  1      OPC=retq               
                                                                                            
.size target, .-target