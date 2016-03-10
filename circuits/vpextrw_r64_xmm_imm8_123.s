  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpmovzxwd %xmm1, %xmm2                    #  1     0     5      OPC=vpmovzxwd_xmm_xmm        
  vfmsub213ss %xmm1, %xmm1, %xmm2           #  2     0x5   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label              
  movzwq %r9w, %rax                         #  4     0xf   4      OPC=movzwq_r64_r16           
  movzwq %ax, %rbx                          #  5     0x13  4      OPC=movzwq_r64_r16           
  retq                                      #  6     0x17  1      OPC=retq                     
                                                                                               
.size target, .-target
