  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq %xmm6, %rcx                              #  2     0x5   5      OPC=movq_r64_xmm    
  callq .move_032_016_ecx_r8w_r9w               #  3     0xa   5      OPC=callq_label     
  callq .move_byte_10_of_ymm1_to_r9b            #  4     0xf   5      OPC=callq_label     
  movzwq %r9w, %rbx                             #  5     0x14  4      OPC=movzwq_r64_r16  
  retq                                          #  6     0x18  1      OPC=retq            
                                                                                          
.size target, .-target
