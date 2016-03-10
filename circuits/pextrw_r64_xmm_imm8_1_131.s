  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm9, %xmm14                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  vandpd %xmm14, %xmm14, %xmm1                    #  3     0xa   5      OPC=vandpd_xmm_xmm_xmm  
  xorl %ebx, %ebx                                 #  4     0xf   2      OPC=xorl_r32_r32        
  callq .move_128_064_xmm1_r10_r11                #  5     0x11  5      OPC=callq_label         
  cmovbew %r11w, %bx                              #  6     0x16  5      OPC=cmovbew_r16_r16     
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
