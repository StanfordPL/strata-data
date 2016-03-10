  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vmovddup %xmm1, %xmm12            #  1     0     4      OPC=vmovddup_xmm_xmm   
  vpmovzxdq %xmm12, %ymm1           #  2     0x4   5      OPC=vpmovzxdq_ymm_xmm  
  movq $0x2, %rbx                   #  3     0x9   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm1_r10_r11  #  4     0x13  5      OPC=callq_label        
  blsmskl %ebx, %ebx                #  5     0x18  5      OPC=blsmskl_r32_r32    
  cmovnsw %r11w, %bx                #  6     0x1d  5      OPC=cmovnsw_r16_r16    
  retq                              #  7     0x22  1      OPC=retq               
                                                                                 
.size target, .-target
