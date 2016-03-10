  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  pmovsxdq %xmm1, %xmm8  #  1     0     6      OPC=pmovsxdq_xmm_xmm  
  movq %xmm8, %rbp       #  2     0x6   5      OPC=movq_r64_xmm      
  movzbl %bpl, %ebx      #  3     0xb   4      OPC=movzbl_r32_r8     
  xaddw %bx, %bp         #  4     0xf   4      OPC=xaddw_r16_r16     
  retq                   #  5     0x13  1      OPC=retq              
                                                                     
.size target, .-target
