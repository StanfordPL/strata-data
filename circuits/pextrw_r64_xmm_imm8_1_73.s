  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm3                    #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9            #  2     0x5   5      OPC=callq_label        
  movzbq %r8b, %rbx                         #  3     0xa   4      OPC=movzbq_r64_r8      
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label        
  callq .move_016_032_r8w_r9w_ebx           #  5     0x13  5      OPC=callq_label        
  retq                                      #  6     0x18  1      OPC=retq               
                                                                                         
.size target, .-target
