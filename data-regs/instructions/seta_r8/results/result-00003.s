  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  setnbe %r8b                       #  1     0     4      OPC=setnbe_r8     
  callq .read_cf_into_rbx           #  2     0x4   5      OPC=callq_label   
  xorq %rcx, %rcx                   #  3     0x9   3      OPC=xorq_r64_r64  
  setnz %bh                         #  4     0xc   3      OPC=setnz_rh      
  callq .move_byte_2_of_rbx_to_r9b  #  5     0xf   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx    #  6     0x14  5      OPC=callq_label   
  retq                              #  7     0x19  1      OPC=retq          
                                                                            
.size target, .-target
