  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  movsbq %r11b, %rax                            #  2     0x5   4      OPC=movsbq_r64_r8   
  xchgw %r11w, %ax                              #  3     0x9   3      OPC=xchgw_ax_r16    
  movzwq %ax, %rbx                              #  4     0xc   4      OPC=movzwq_r64_r16  
  retq                                          #  5     0x10  1      OPC=retq            
                                                                                          
.size target, .-target
