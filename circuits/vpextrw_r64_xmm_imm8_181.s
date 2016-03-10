  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label          
  vpmovzxwq %xmm13, %xmm2              #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm    
  callq .move_128_064_xmm2_r10_r11     #  3     0xa   5      OPC=callq_label          
  movhlps %xmm12, %xmm12               #  4     0xf   4      OPC=movhlps_xmm_xmm      
  vcvttss2sil %xmm12, %ebx             #  5     0x13  5      OPC=vcvttss2sil_r32_xmm  
  xorw %r11w, %bx                      #  6     0x18  4      OPC=xorw_r16_r16         
  retq                                 #  7     0x1c  1      OPC=retq                 
                                                                                      
.size target, .-target
