  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movd %xmm6, %ebx                              #  2     0x5   4      OPC=movd_r32_xmm    
  salw $0x1, %bx                                #  3     0x9   3      OPC=salw_r16_one    
  callq .move_032_016_ebx_r10w_r11w             #  4     0xc   5      OPC=callq_label     
  movzwl %r11w, %ebx                            #  5     0x11  4      OPC=movzwl_r32_r16  
  retq                                          #  6     0x15  1      OPC=retq            
                                                                                          
.size target, .-target
