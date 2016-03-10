  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm12           #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vsubss %xmm1, %xmm12, %xmm3       #  2     0x5   4      OPC=vsubss_xmm_xmm_xmm  
  xorl %ebx, %ebx                   #  3     0x9   2      OPC=xorl_r32_r32        
  callq .move_128_064_xmm3_r10_r11  #  4     0xb   5      OPC=callq_label         
  xaddw %r11w, %bx                  #  5     0x10  5      OPC=xaddw_r16_r16       
  retq                              #  6     0x15  1      OPC=retq                
                                                                                  
.size target, .-target
