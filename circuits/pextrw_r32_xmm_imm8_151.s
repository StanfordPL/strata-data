  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm2                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  xorl %ebx, %ebx                                 #  3     0xa   2      OPC=xorl_r32_r32       
  callq .move_128_064_xmm2_r8_r9                  #  4     0xc   5      OPC=callq_label        
  cmovpw %r9w, %bx                                #  5     0x11  5      OPC=cmovpw_r16_r16     
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
