  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movmskpd %xmm9, %rbx                            #  2     0x5   5      OPC=movmskpd_r64_xmm   
  vpmovzxwq %xmm8, %xmm3                          #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11                #  4     0xf   5      OPC=callq_label        
  xaddw %bx, %r11w                                #  5     0x14  5      OPC=xaddw_r16_r16      
  retq                                            #  6     0x19  1      OPC=retq               
                                                                                               
.size target, .-target
