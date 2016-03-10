  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  xorl %eax, %eax                               #  1     0     2      OPC=xorl_r32_r32   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x2   5      OPC=callq_label    
  movq %xmm5, %rcx                              #  3     0x7   5      OPC=movq_r64_xmm   
  callq .read_zf_into_rbx                       #  4     0xc   5      OPC=callq_label    
  xchgw %bx, %cx                                #  5     0x11  3      OPC=xchgw_r16_r16  
  retq                                          #  6     0x14  1      OPC=retq           
                                                                                         
.size target, .-target
