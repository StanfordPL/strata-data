  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxbq %xmm1, %xmm6            #  1     0     5      OPC=vpmovzxbq_xmm_xmm       
  cvttpd2dq %xmm6, %xmm9            #  2     0x5   5      OPC=cvttpd2dq_xmm_xmm       
  vpunpckldq %xmm9, %xmm6, %xmm3    #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  4     0xf   5      OPC=callq_label             
  movzbq %r10b, %rbx                #  5     0x14  4      OPC=movzbq_r64_r8           
  retq                              #  6     0x18  1      OPC=retq                    
                                                                                      
.size target, .-target
