  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  callq .move_byte_11_of_ymm1_to_r9b              #  2     0x5   5      OPC=callq_label               
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64              
  vfnmadd213sd %xmm11, %xmm8, %xmm1               #  4     0xd   5      OPC=vfnmadd213sd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_7_of_rbx                #  5     0x12  5      OPC=callq_label               
  callq .move_byte_10_of_ymm1_to_r8b              #  6     0x17  5      OPC=callq_label               
  negl %ebx                                       #  7     0x1c  2      OPC=negl_r32                  
  callq .move_008_016_r8b_r9b_bx                  #  8     0x1e  5      OPC=callq_label               
  retq                                            #  9     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
