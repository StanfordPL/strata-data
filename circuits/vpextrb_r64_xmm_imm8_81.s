  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  xorl %ebx, %ebx                 #  1     0     2      OPC=xorl_r32_r32       
  vpmovzxbq %xmm1, %xmm2          #  2     0x2   5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  3     0x7   5      OPC=callq_label        
  cmovnbew %r9w, %bx              #  4     0xc   5      OPC=cmovnbew_r16_r16   
  xchgb %bl, %r9b                 #  5     0x11  3      OPC=xchgb_r8_r8        
  retq                            #  6     0x14  1      OPC=retq               
                                                                               
.size target, .-target
