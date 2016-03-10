  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  vmovq %xmm11, %r13                              #  2     0x5   5      OPC=vmovq_r64_xmm   
  movq $0x40, %rbx                                #  3     0xa   10     OPC=movq_r64_imm64  
  xaddb %bl, %r13b                                #  4     0x14  4      OPC=xaddb_r8_r8     
  retq                                            #  5     0x18  1      OPC=retq            
                                                                                            
.size target, .-target
