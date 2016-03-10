  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_sf_into_rbx            #  1     0     5      OPC=callq_label   
  callq .read_of_into_rcx            #  2     0x5   5      OPC=callq_label   
  callq .move_064_032_rcx_r12d_r13d  #  3     0xa   5      OPC=callq_label   
  callq .move_008_016_r12b_r13b_dx   #  4     0xf   5      OPC=callq_label   
  xorw %dx, %bx                      #  5     0x14  3      OPC=xorw_r16_r16  
  retq                               #  6     0x17  1      OPC=retq          
                                                                             
.size target, .-target
