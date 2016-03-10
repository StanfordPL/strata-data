  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  vmovq %xmm11, %rax                              #  2     0x5   5      OPC=vmovq_r64_xmm   
  movzwl %ax, %r11d                               #  3     0xa   4      OPC=movzwl_r32_r16  
  movl %r11d, %ebx                                #  4     0xe   3      OPC=movl_r32_r32    
  orw %ax, %bx                                    #  5     0x11  3      OPC=orw_r16_r16     
  retq                                            #  6     0x14  1      OPC=retq            
                                                                                            
.size target, .-target
