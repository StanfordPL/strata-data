  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq $0x40, %rbx                              #  2     0x5   10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm5, %ymm3                        #  3     0xf   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r10_r11              #  4     0x14  5      OPC=callq_label        
  xchgq %r11, %rbx                              #  5     0x19  3      OPC=xchgq_r64_r64      
  retq                                          #  6     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
