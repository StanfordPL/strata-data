  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq $0x40, %rbx                              #  2     0x5   10     OPC=movq_r64_imm64  
  vmovd %xmm6, %r13d                            #  3     0xf   5      OPC=vmovd_r32_xmm   
  xchgw %r13w, %bx                              #  4     0x14  4      OPC=xchgw_r16_r16   
  retq                                          #  5     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
