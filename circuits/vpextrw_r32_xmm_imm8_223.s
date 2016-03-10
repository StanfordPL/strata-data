  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movq $0x0, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64     
  decb %bh                                        #  3     0xf   2      OPC=decb_rh            
  vpmovzxwq %xmm11, %xmm2                         #  4     0x11  5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  5     0x16  5      OPC=callq_label        
  cmovngw %r11w, %bx                              #  6     0x1b  5      OPC=cmovngw_r16_r16    
  retq                                            #  7     0x20  1      OPC=retq               
                                                                                               
.size target, .-target
