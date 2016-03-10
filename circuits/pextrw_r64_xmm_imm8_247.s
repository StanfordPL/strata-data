  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  movshdup %xmm13, %xmm6               #  2     0x5   5      OPC=movshdup_xmm_xmm   
  vpmovzxwq %xmm6, %xmm3               #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11     #  4     0xf   5      OPC=callq_label        
  movl %r11d, %ebx                     #  5     0x14  3      OPC=movl_r32_r32       
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
