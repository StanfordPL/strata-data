  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode             
.target:                           #        0     0      OPC=<label>        
  callq .set_sf                    #  1     0     5      OPC=callq_label    
  movzbq %cl, %rdx                 #  2     0x5   4      OPC=movzbq_r64_r8  
  callq .read_sf_into_rbx          #  3     0x9   5      OPC=callq_label    
  callq .move_064_032_rbx_r8d_r9d  #  4     0xe   5      OPC=callq_label    
  callq .move_032_016_edx_r8w_r9w  #  5     0x13  5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rbx  #  6     0x18  5      OPC=callq_label    
  retq                             #  7     0x1d  1      OPC=retq           
                                                                            
.size target, .-target
