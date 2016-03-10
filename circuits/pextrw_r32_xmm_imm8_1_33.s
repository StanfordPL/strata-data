  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vpmovzxwq %xmm1, %xmm3                        #  1     0     5      OPC=vpmovzxwq_xmm_xmm    
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label          
  vandnpd %xmm6, %xmm7, %xmm11                  #  3     0xa   4      OPC=vandnpd_xmm_xmm_xmm  
  vmovups %xmm11, %xmm3                         #  4     0xe   5      OPC=vmovups_xmm_xmm      
  callq .move_128_064_xmm3_r8_r9                #  5     0x13  5      OPC=callq_label          
  movq %r8, %rbx                                #  6     0x18  3      OPC=movq_r64_r64         
  retq                                          #  7     0x1b  1      OPC=retq                 
                                                                                               
.size target, .-target
