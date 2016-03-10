  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm7  #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  xorl %ebx, %ebx        #  2     0x5   2      OPC=xorl_r32_r32      
  movq %xmm7, %r9        #  3     0x7   5      OPC=movq_r64_xmm      
  cmovzw %r9w, %bx       #  4     0xc   5      OPC=cmovzw_r16_r16    
  retq                   #  5     0x11  1      OPC=retq              
                                                                     
.size target, .-target
