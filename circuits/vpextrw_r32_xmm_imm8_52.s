  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  movq %xmm10, %r12                               #  2     0x5   5      OPC=movq_r64_xmm   
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64   
  xaddw %bx, %r12w                                #  4     0xd   5      OPC=xaddw_r16_r16  
  retq                                            #  5     0x12  1      OPC=retq           
                                                                                           
.size target, .-target
