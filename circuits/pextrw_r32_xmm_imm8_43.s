  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode              
.target:                                    #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label     
  callq .move_032_016_edx_r10w_r11w         #  2     0x5  5      OPC=callq_label     
  movzwq %r11w, %rbx                        #  3     0xa  4      OPC=movzwq_r64_r16  
  retq                                      #  4     0xe  1      OPC=retq            
                                                                                     
.size target, .-target
