  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label     
  movzwl %r11w, %ebx                            #  2     0x5  4      OPC=movzwl_r32_r16  
  retq                                          #  3     0x9  1      OPC=retq            
                                                                                         
.size target, .-target
