  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .clear_zf                    #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rbx            #  2     0x5   5      OPC=callq_label    
  movsbl %cl, %ecx                   #  3     0xa   3      OPC=movsbl_r32_r8  
  callq .move_064_032_rcx_r10d_r11d  #  4     0xd   5      OPC=callq_label    
  callq .move_008_016_r10b_r11b_bx   #  5     0x12  5      OPC=callq_label    
  retq                               #  6     0x17  1      OPC=retq           
                                                                              
.size target, .-target
