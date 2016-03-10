  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vfnmsub132sd %xmm8, %xmm1, %xmm1                #  2     0x5   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  callq .move_byte_10_of_ymm1_to_r8b              #  3     0xa   5      OPC=callq_label               
  movq $0x20, %rbx                                #  4     0xf   10     OPC=movq_r64_imm64            
  callq .move_byte_11_of_ymm1_to_r9b              #  5     0x19  5      OPC=callq_label               
  callq .move_008_016_r8b_r9b_bx                  #  6     0x1e  5      OPC=callq_label               
  retq                                            #  7     0x23  1      OPC=retq                      
                                                                                                      
.size target, .-target
