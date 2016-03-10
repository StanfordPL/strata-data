  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label     
  movswq %r10w, %rbx                            #  2     0x5  4      OPC=movswq_r64_r16  
  xchgl %r13d, %ebx                             #  3     0x9  3      OPC=xchgl_r32_r32   
  retq                                          #  4     0xc  1      OPC=retq            
                                                                                         
.size target, .-target
