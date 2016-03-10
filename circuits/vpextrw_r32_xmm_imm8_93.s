  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  callq .move_byte_11_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm1, %xmm1      #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_r9b_to_byte_17_of_ymm1  #  3     0x9   5      OPC=callq_label             
  movq $0x4, %rbx                     #  4     0xe   10     OPC=movq_r64_imm64          
  andnl %ebx, %ebx, %r11d             #  5     0x18  5      OPC=andnl_r32_r32_r32       
  callq .read_zf_into_rbx             #  6     0x1d  5      OPC=callq_label             
  callq .move_byte_6_of_ymm1_to_r8b   #  7     0x22  5      OPC=callq_label             
  callq .move_008_016_r8b_r9b_bx      #  8     0x27  5      OPC=callq_label             
  retq                                #  9     0x2c  1      OPC=retq                    
                                                                                        
.size target, .-target
