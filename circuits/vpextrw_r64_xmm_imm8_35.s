  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm1                    #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5  5      OPC=callq_label        
  movzwq %r9w, %rbx                         #  3     0xa  4      OPC=movzwq_r64_r16     
  retq                                      #  4     0xe  1      OPC=retq               
                                                                                        
.size target, .-target
