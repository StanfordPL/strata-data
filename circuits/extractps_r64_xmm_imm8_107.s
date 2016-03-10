  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9            #  1     0     5      OPC=callq_label     
  callq .move_r8b_to_byte_8_of_ymm1         #  2     0x5   5      OPC=callq_label     
  movupd %xmm1, %xmm2                       #  3     0xa   4      OPC=movupd_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  4     0xe   5      OPC=callq_label     
  movl %r9d, %ebx                           #  5     0x13  3      OPC=movl_r32_r32    
  retq                                      #  6     0x16  1      OPC=retq            
                                                                                      
.size target, .-target
