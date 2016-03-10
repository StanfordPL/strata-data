  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .set_pf                      #  1     0     5      OPC=callq_label    
  movsbl %cl, %edx                   #  2     0x5   3      OPC=movsbl_r32_r8  
  callq .read_pf_into_rbx            #  3     0x8   5      OPC=callq_label    
  callq .move_064_032_rdx_r12d_r13d  #  4     0xd   5      OPC=callq_label    
  callq .move_008_016_r12b_r13b_bx   #  5     0x12  5      OPC=callq_label    
  retq                               #  6     0x17  1      OPC=retq           
                                                                              
.size target, .-target
