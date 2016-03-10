  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0x2, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64  
  movq %xmm9, %rax                                #  3     0xf   5      OPC=movq_r64_xmm    
  orw %ax, %bx                                    #  4     0x14  3      OPC=orw_r16_r16     
  xchgw %ax, %bx                                  #  5     0x17  2      OPC=xchgw_r16_ax    
  retq                                            #  6     0x19  1      OPC=retq            
                                                                                            
.size target, .-target
