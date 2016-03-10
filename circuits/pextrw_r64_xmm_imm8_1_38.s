  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm14                   #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  vpmovzxwq %xmm14, %xmm3                   #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  movmskpd %xmm3, %rbx                      #  4     0xf   4      OPC=movmskpd_r64_xmm   
  orw %r9w, %bx                             #  5     0x13  4      OPC=orw_r16_r16        
  retq                                      #  6     0x17  1      OPC=retq               
                                                                                         
.size target, .-target
