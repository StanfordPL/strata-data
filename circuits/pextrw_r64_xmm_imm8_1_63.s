  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_byte_14_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx      #  3     0xa   5      OPC=callq_label     
  movzwl %bx, %ebx                    #  4     0xf   3      OPC=movzwl_r32_r16  
  andb %bh, %bh                       #  5     0x12  2      OPC=andb_rh_rh      
  retq                                #  6     0x14  1      OPC=retq            
                                                                                
.size target, .-target
