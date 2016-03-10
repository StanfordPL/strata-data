  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w           #  2     0x5   5      OPC=callq_label     
  movq $0x1, %rbx                           #  3     0xa   10     OPC=movq_r64_imm64  
  callq .move_016_032_r8w_r9w_ebx           #  4     0x14  5      OPC=callq_label     
  retq                                      #  5     0x19  1      OPC=retq            
                                                                                      
.size target, .-target
