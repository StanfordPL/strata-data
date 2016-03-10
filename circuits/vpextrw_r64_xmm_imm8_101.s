  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm13, %xmm9              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovaps %ymm9, %ymm3                 #  3     0xa   5      OPC=vmovaps_ymm_ymm    
  callq .move_128_064_xmm3_r10_r11     #  4     0xf   5      OPC=callq_label        
  movzwl %r11w, %ebx                   #  5     0x14  4      OPC=movzwl_r32_r16     
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target
