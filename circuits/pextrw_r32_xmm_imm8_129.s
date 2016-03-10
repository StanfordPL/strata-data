  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  movq $0x1, %rbx                   #  1     0     10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm1, %ymm3            #  2     0xa   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0xf   5      OPC=callq_label        
  xaddw %bx, %r11w                  #  4     0x14  5      OPC=xaddw_r16_r16      
  retq                              #  5     0x19  1      OPC=retq               
                                                                                 
.size target, .-target