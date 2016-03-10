  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label    
  testw %r8w, %dx                           #  2     0x5   4      OPC=testw_r16_r16  
  callq .read_pf_into_rbx                   #  3     0x9   5      OPC=callq_label    
  callq .move_byte_3_of_rbx_to_r8b          #  4     0xe   5      OPC=callq_label    
  callq .move_r8b_to_byte_6_of_rbx          #  5     0x13  5      OPC=callq_label    
  xchgl %edx, %ebx                          #  6     0x18  2      OPC=xchgl_r32_r32  
  retq                                      #  7     0x1a  1      OPC=retq           
                                                                                     
.size target, .-target
