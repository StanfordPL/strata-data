  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  andb %al, %bh                             #  2     0x5   2      OPC=andb_rh_r8       
  cmovnbw %bx, %r8w                         #  3     0x7   5      OPC=cmovnbw_r16_r16  
  callq .move_r8b_to_byte_2_of_ymm1         #  4     0xc   5      OPC=callq_label      
  retq                                      #  5     0x11  1      OPC=retq             
                                                                                       
.size target, .-target
