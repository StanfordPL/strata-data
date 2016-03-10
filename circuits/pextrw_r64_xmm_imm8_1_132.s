  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vcvttsd2sil %xmm4, %ebx                       #  2     0x5   4      OPC=vcvttsd2sil_r32_xmm  
  callq .move_byte_5_of_rbx_to_r9b              #  3     0x9   5      OPC=callq_label          
  movdqa %xmm6, %xmm1                           #  4     0xe   4      OPC=movdqa_xmm_xmm       
  callq .move_r9b_to_byte_3_of_ymm1             #  5     0x12  5      OPC=callq_label          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  6     0x17  5      OPC=callq_label          
  movzwq %r10w, %rbx                            #  7     0x1c  4      OPC=movzwq_r64_r16       
  retq                                          #  8     0x20  1      OPC=retq                 
                                                                                               
.size target, .-target
