  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_9_of_ymm1         #  2     0x5   5      OPC=callq_label     
  xchgl %r9d, %edx                          #  3     0xa   3      OPC=xchgl_r32_r32   
  callq .move_032_016_edx_r8w_r9w           #  4     0xd   5      OPC=callq_label     
  callq .move_byte_14_of_ymm1_to_r9b        #  5     0x12  5      OPC=callq_label     
  movzwq %r9w, %rbx                         #  6     0x17  4      OPC=movzwq_r64_r16  
  retq                                      #  7     0x1b  1      OPC=retq            
                                                                                      
.size target, .-target
