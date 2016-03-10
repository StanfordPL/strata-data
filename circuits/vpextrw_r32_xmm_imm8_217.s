  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  xorl %ebx, %ebx                   #  1     0     2      OPC=xorl_r32_r32        
  vpmovzxwq %xmm1, %ymm0            #  2     0x2   5      OPC=vpmovzxwq_ymm_xmm   
  adcb %bl, %bl                     #  3     0x7   2      OPC=adcb_r8_r8          
  vsubss %xmm1, %xmm0, %xmm2        #  4     0x9   4      OPC=vsubss_xmm_xmm_xmm  
  punpckhqdq %xmm0, %xmm2           #  5     0xd   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  6     0x11  5      OPC=callq_label         
  xchgw %r12w, %bx                  #  7     0x16  4      OPC=xchgw_r16_r16       
  retq                              #  8     0x1a  1      OPC=retq                
                                                                                  
.size target, .-target
