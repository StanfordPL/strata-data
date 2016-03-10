  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm10, %ymm1                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  3     0xa   5      OPC=callq_label        
  movq $0xffffffffffffffc0, %rbx                  #  4     0xf   10     OPC=movq_r64_imm64     
  callq .move_016_032_r8w_r9w_ebx                 #  5     0x19  5      OPC=callq_label        
  retq                                            #  6     0x1e  1      OPC=retq               
                                                                                               
.size target, .-target
