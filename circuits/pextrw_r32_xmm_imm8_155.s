  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  vmovq %xmm5, %rbx                             #  2     0x5   5      OPC=vmovq_r64_xmm   
  callq .move_032_016_ebx_r10w_r11w             #  3     0xa   5      OPC=callq_label     
  movzwl %r11w, %ebx                            #  4     0xf   4      OPC=movzwl_r32_r16  
  retq                                          #  5     0x13  1      OPC=retq            
                                                                                          
.size target, .-target
