  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label       
  callq .move_r9b_to_byte_8_of_ymm1               #  2     0x5   5      OPC=callq_label       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label       
  pmovzxwq %xmm10, %xmm2                          #  4     0xf   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                  #  5     0x15  5      OPC=callq_label       
  movzwl %r9w, %ebx                               #  6     0x1a  4      OPC=movzwl_r32_r16    
  retq                                            #  7     0x1e  1      OPC=retq              
                                                                                              
.size target, .-target
