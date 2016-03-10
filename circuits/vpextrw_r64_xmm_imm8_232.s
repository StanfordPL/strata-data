  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  xorq %rbx, %rbx                           #  2     0x5   3      OPC=xorq_r64_r64   
  xaddw %r8w, %ax                           #  3     0x8   5      OPC=xaddw_r16_r16  
  callq .move_r9b_to_byte_3_of_ymm1         #  4     0xd   5      OPC=callq_label    
  callq .move_byte_1_of_ymm1_to_r9b         #  5     0x12  5      OPC=callq_label    
  callq .move_008_016_r8b_r9b_bx            #  6     0x17  5      OPC=callq_label    
  retq                                      #  7     0x1c  1      OPC=retq           
                                                                                     
.size target, .-target
