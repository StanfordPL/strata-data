  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movsbq %r8b, %rbx                         #  2     0x5   4      OPC=movsbq_r64_r8   
  movzwl %bx, %ebx                          #  3     0x9   3      OPC=movzwl_r32_r16  
  callq .move_byte_14_of_ymm1_to_r8b        #  4     0xc   5      OPC=callq_label     
  callq .move_byte_15_of_ymm1_to_r9b        #  5     0x11  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx            #  6     0x16  5      OPC=callq_label     
  retq                                      #  7     0x1b  1      OPC=retq            
                                                                                      
.size target, .-target
