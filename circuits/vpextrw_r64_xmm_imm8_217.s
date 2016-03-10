  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  pmovzxwq %xmm1, %xmm14           #  1     0     6      OPC=pmovzxwq_xmm_xmm       
  vunpckhpd %xmm14, %xmm14, %xmm2  #  2     0x6   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9   #  3     0xb   5      OPC=callq_label            
  xorq %rbx, %rbx                  #  4     0x10  3      OPC=xorq_r64_r64           
  xchgw %bx, %r9w                  #  5     0x13  4      OPC=xchgw_r16_r16          
  retq                             #  6     0x17  1      OPC=retq                   
                                                                                    
.size target, .-target
