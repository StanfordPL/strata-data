  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_byte_1_of_ymm1_to_r8b         #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_11_of_ymm1        #  2     0x5   5      OPC=callq_label     
  movq $0x4, %rax                           #  3     0xa   10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x14  5      OPC=callq_label     
  movq %rax, %rbx                           #  5     0x19  3      OPC=movq_r64_r64    
  retq                                      #  6     0x1c  1      OPC=retq            
                                                                                      
.size target, .-target
