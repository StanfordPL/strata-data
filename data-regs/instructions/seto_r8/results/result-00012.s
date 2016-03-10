  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode           
.target:                           #        0     0      OPC=<label>      
  callq .read_of_into_rbx          #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x5   5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_dx   #  3     0xa   5      OPC=callq_label  
  callq .write_dl_to_pf            #  4     0xf   5      OPC=callq_label  
  callq .read_pf_into_rbx          #  5     0x14  5      OPC=callq_label  
  retq                             #  6     0x19  1      OPC=retq         
                                                                          
.size target, .-target
