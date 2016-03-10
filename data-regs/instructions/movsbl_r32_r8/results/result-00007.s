  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movsbq %cl, %rdx                   #  1     0     4      OPC=movsbq_r64_r8  
  callq .move_032_016_edx_r10w_r11w  #  2     0x4   5      OPC=callq_label    
  callq .clear_sf                    #  3     0x9   5      OPC=callq_label    
  callq .read_sf_into_rbx            #  4     0xe   5      OPC=callq_label    
  callq .move_016_032_r10w_r11w_ebx  #  5     0x13  5      OPC=callq_label    
  retq                               #  6     0x18  1      OPC=retq           
                                                                              
.size target, .-target
