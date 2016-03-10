  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm2                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  3     0xa   5      OPC=callq_label        
  movzwq %r8w, %rbx                               #  4     0xf   4      OPC=movzwq_r64_r16     
  retq                                            #  5     0x13  1      OPC=retq               
                                                                                               
.size target, .-target
