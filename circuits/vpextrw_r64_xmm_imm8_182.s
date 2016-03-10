  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label    
  movq %xmm7, %r12                              #  2     0x5   5      OPC=movq_r64_xmm   
  xorl %ebx, %ebx                               #  3     0xa   2      OPC=xorl_r32_r32   
  xaddw %r12w, %bx                              #  4     0xc   5      OPC=xaddw_r16_r16  
  retq                                          #  5     0x11  1      OPC=retq           
                                                                                         
.size target, .-target
