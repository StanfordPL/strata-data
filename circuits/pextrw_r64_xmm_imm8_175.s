  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  movzbq %r9b, %r13                   #  2     0x5   4      OPC=movzbq_r64_r8  
  shlb $0x1, %r13b                    #  3     0x9   3      OPC=shlb_r8_one    
  callq .read_sf_into_rbx             #  4     0xc   5      OPC=callq_label    
  callq .move_byte_14_of_ymm1_to_r8b  #  5     0x11  5      OPC=callq_label    
  callq .move_008_016_r8b_r9b_bx      #  6     0x16  5      OPC=callq_label    
  retq                                #  7     0x1b  1      OPC=retq           
                                                                               
.size target, .-target
