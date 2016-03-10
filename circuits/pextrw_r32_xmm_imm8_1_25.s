  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovsldup %xmm1, %xmm7                    #  1     0     4      OPC=vmovsldup_xmm_xmm  
  vpmovzxwq %xmm7, %ymm1                    #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  movzwq %r8w, %rbx                         #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
