  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm5             #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  movshdup %xmm5, %xmm14                    #  2     0x4   5      OPC=movshdup_xmm_xmm       
  vpmovzxwq %xmm14, %xmm2                   #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label            
  movzwq %r8w, %rbx                         #  5     0x13  4      OPC=movzwq_r64_r16         
  retq                                      #  6     0x17  1      OPC=retq                   
                                                                                             
.size target, .-target
