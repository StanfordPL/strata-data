  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  shlb $0x1, %bh                     #  1     0    2      OPC=shlb_rh_one  
  andb %bh, %bh                      #  2     0x2  2      OPC=andb_rh_rh   
  callq .move_032_016_ebx_r8w_r9w    #  3     0x4  5      OPC=callq_label  
  callq .move_r8b_to_byte_4_of_ymm1  #  4     0x9  5      OPC=callq_label  
  retq                               #  5     0xe  1      OPC=retq         
                                                                           
.size target, .-target
