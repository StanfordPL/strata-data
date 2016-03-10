  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .read_of_into_rcx            #  1     0     5      OPC=callq_label    
  callq .read_sf_into_rbx            #  2     0x5   5      OPC=callq_label    
  callq .move_064_032_rbx_r10d_r11d  #  3     0xa   5      OPC=callq_label    
  xchgl %ecx, %ebx                   #  4     0xf   2      OPC=xchgl_r32_r32  
  callq .move_032_064_r10d_r11d_rdx  #  5     0x11  5      OPC=callq_label    
  xorw %dx, %bx                      #  6     0x16  3      OPC=xorw_r16_r16   
  callq .read_pf_into_rbx            #  7     0x19  5      OPC=callq_label    
  retq                               #  8     0x1e  1      OPC=retq           
                                                                              
.size target, .-target
