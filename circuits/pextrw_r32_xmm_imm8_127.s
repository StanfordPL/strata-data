  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movd %xmm11, %ebx                               #  2     0x5   5      OPC=movd_r32_xmm    
  callq .move_032_016_ebx_r8w_r9w                 #  3     0xa   5      OPC=callq_label     
  movzwq %r9w, %rbx                               #  4     0xf   4      OPC=movzwq_r64_r16  
  retq                                            #  5     0x13  1      OPC=retq            
                                                                                            
.size target, .-target
