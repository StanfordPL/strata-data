  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rbx           #  2     0x5   5      OPC=callq_label    
  callq .move_r8b_to_byte_5_of_rbx          #  3     0xa   5      OPC=callq_label    
  xchgl %ebx, %edx                          #  4     0xf   2      OPC=xchgl_r32_r32  
  retq                                      #  5     0x11  1      OPC=retq           
                                                                                     
.size target, .-target
