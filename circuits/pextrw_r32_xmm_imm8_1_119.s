  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm1, %xmm11, %xmm5                  #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  pmovzxwq %xmm5, %xmm2                           #  3     0x9   5      OPC=pmovzxwq_xmm_xmm       
  callq .move_128_064_xmm2_r8_r9                  #  4     0xe   5      OPC=callq_label            
  movzwl %r9w, %ebx                               #  5     0x13  4      OPC=movzwl_r32_r16         
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
