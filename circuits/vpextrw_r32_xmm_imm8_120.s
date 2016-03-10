  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64        
  vpmovzxdq %xmm1, %xmm6            #  2     0xa   5      OPC=vpmovzxdq_xmm_xmm     
  popcntq %rbx, %r15                #  3     0xf   5      OPC=popcntq_r64_r64       
  vpbroadcastq %xmm6, %ymm2         #  4     0x14  5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  5     0x19  5      OPC=callq_label           
  adcw %r11w, %bx                   #  6     0x1e  4      OPC=adcw_r16_r16          
  retq                              #  7     0x22  1      OPC=retq                  
                                                                                    
.size target, .-target
