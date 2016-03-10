  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label           
  vpmovzxbq %xmm9, %ymm15            #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm     
  vpbroadcastb %xmm15, %xmm1         #  3     0xa   5      OPC=vpbroadcastb_xmm_xmm  
  movq %xmm9, %xmm1                  #  4     0xf   5      OPC=movq_xmm_xmm          
  punpcklqdq %xmm3, %xmm1            #  5     0x14  4      OPC=punpcklqdq_xmm_xmm    
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
