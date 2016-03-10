  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vpbroadcastw %xmm1, %ymm0         #  1     0     5      OPC=vpbroadcastw_ymm_xmm  
  vpmovzxbq %xmm0, %ymm1            #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm     
  movq $0x3, %rbx                   #  3     0xa   10     OPC=movq_r64_imm64        
  callq .move_128_064_xmm1_r12_r13  #  4     0x14  5      OPC=callq_label           
  callq .move_008_016_r12b_r13b_bx  #  5     0x19  5      OPC=callq_label           
  retq                              #  6     0x1e  1      OPC=retq                  
                                                                                    
.size target, .-target
