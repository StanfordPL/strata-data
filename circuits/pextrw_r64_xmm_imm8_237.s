  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm10, %xmm11                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vaddpd %xmm9, %xmm11, %xmm1                     #  3     0xa   5      OPC=vaddpd_xmm_xmm_xmm  
  xorl %ebx, %ebx                                 #  4     0xf   2      OPC=xorl_r32_r32        
  callq .move_128_064_xmm1_r10_r11                #  5     0x11  5      OPC=callq_label         
  movw %r11w, %bx                                 #  6     0x16  4      OPC=movw_r16_r16        
  retq                                            #  7     0x1a  1      OPC=retq                
                                                                                                
.size target, .-target
