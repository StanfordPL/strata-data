  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  xorq %rbx, %rbx                                 #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label        
  cmovnbw %bx, %bx                                #  3     0x8   4      OPC=cmovnbw_r16_r16    
  vpmovzxwq %xmm11, %xmm2                         #  4     0xc   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  5     0x11  5      OPC=callq_label        
  xchgw %r11w, %bx                                #  6     0x16  4      OPC=xchgw_r16_r16      
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
