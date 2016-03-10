  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpbroadcastq %xmm3, %xmm5          #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm    
  vpmovzxbd %xmm9, %ymm3             #  3     0xa   5      OPC=vpmovzxbd_ymm_xmm       
  callq .move_128_064_xmm3_r12_r13   #  4     0xf   5      OPC=callq_label             
  vcvtsi2ssl %r13d, %xmm2, %xmm1     #  5     0x14  5      OPC=vcvtsi2ssl_xmm_xmm_r32  
  punpckhqdq %xmm5, %xmm1            #  6     0x19  4      OPC=punpckhqdq_xmm_xmm      
  retq                               #  7     0x1d  1      OPC=retq                    
                                                                                       
.size target, .-target
