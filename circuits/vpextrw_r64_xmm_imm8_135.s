  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  vmovd %xmm11, %ebx                              #  2     0x5   4      OPC=vmovd_r32_xmm   
  callq .move_032_016_ebx_r8w_r9w                 #  3     0x9   5      OPC=callq_label     
  movzwq %r9w, %rbx                               #  4     0xe   4      OPC=movzwq_r64_r16  
  retq                                            #  5     0x12  1      OPC=retq            
                                                                                            
.size target, .-target
