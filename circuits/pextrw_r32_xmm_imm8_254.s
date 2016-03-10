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
  movd %xmm11, %r9d                               #  3     0xf   5      OPC=movd_r32_xmm    
  xchgw %r9w, %bx                                 #  4     0x14  4      OPC=xchgw_r16_r16   
  retq                                            #  5     0x18  1      OPC=retq            
                                                                                            
.size target, .-target
