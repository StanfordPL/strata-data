  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm6, %ymm2                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  movss %xmm7, %xmm2                            #  3     0xa   4      OPC=movss_xmm_xmm      
  callq .move_128_064_xmm2_r12_r13              #  4     0xe   5      OPC=callq_label        
  movzwl %r13w, %ebx                            #  5     0x13  4      OPC=movzwl_r32_r16     
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
