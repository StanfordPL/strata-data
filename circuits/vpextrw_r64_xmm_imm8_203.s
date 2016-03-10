  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vmovdqu %xmm1, %xmm10                     #  1     0     4      OPC=vmovdqu_xmm_xmm      
  vpmovzxwd %xmm10, %ymm8                   #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm    
  vsqrtss %xmm1, %xmm8, %xmm1               #  3     0x9   4      OPC=vsqrtss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xd   5      OPC=callq_label          
  movzwq %r9w, %rbx                         #  5     0x12  4      OPC=movzwq_r64_r16       
  retq                                      #  6     0x16  1      OPC=retq                 
                                                                                           
.size target, .-target
