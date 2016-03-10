  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq %xmm7, %xmm11                            #  2     0x5   5      OPC=movq_xmm_xmm       
  vpmovzxwd %xmm11, %xmm4                       #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm  
  movd %xmm4, %ebx                              #  4     0xf   4      OPC=movd_r32_xmm       
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
