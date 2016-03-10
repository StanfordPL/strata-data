  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  callq .move_032_064_r10d_r11d_rdx             #  2     0x5   5      OPC=callq_label     
  movq $0xfffffffffffffffc, %rbx                #  3     0xa   10     OPC=movq_r64_imm64  
  callq .move_032_016_edx_r10w_r11w             #  4     0x14  5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ebx             #  5     0x19  5      OPC=callq_label     
  retq                                          #  6     0x1e  1      OPC=retq            
                                                                                          
.size target, .-target
