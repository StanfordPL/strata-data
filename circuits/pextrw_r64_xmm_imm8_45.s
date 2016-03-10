  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11           #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm2                       #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  movzwl %r12w, %ebx                            #  4     0xf   4      OPC=movzwl_r32_r16     
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
