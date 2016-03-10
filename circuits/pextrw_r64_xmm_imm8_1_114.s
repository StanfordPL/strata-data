  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffc, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64  
  movupd %xmm9, %xmm2                             #  3     0xf   5      OPC=movupd_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  4     0x14  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx                 #  5     0x19  5      OPC=callq_label     
  retq                                            #  6     0x1e  1      OPC=retq            
                                                                                            
.size target, .-target
