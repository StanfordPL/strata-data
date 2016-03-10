  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovdqu %xmm1, %xmm3                      #  1     0     4      OPC=vmovdqu_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  callq .move_032_064_r8d_r9d_rbx           #  3     0x9   5      OPC=callq_label      
  callq .move_032_016_ebx_r8w_r9w           #  4     0xe   5      OPC=callq_label      
  movzwq %r9w, %rbx                         #  5     0x13  4      OPC=movzwq_r64_r16   
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
