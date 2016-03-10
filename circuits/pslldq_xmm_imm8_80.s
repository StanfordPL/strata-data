  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                      
.target:                         #        0     0      OPC=<label>                 
  xorq %rsi, %rsi                #  1     0     3      OPC=xorq_r64_r64            
  vcvtsi2sdl %esi, %xmm1, %xmm5  #  2     0x3   4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vbroadcastss %xmm5, %ymm12     #  3     0x7   5      OPC=vbroadcastss_ymm_xmm    
  movdqa %xmm12, %xmm1           #  4     0xc   5      OPC=movdqa_xmm_xmm          
  retq                           #  5     0x11  1      OPC=retq                    
                                                                                   
.size target, .-target
