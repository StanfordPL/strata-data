  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label        
  andnl %ebx, %ebx, %r11d           #  2     0x5   5      OPC=andnl_r32_r32_r32  
  callq .read_zf_into_rcx           #  3     0xa   5      OPC=callq_label        
  callq .move_064_032_rcx_r8d_r9d   #  4     0xf   5      OPC=callq_label        
  callq .move_r9b_to_byte_2_of_rbx  #  5     0x14  5      OPC=callq_label        
  xaddl %r11d, %ebx                 #  6     0x19  4      OPC=xaddl_r32_r32      
  retq                              #  7     0x1d  1      OPC=retq               
                                                                                 
.size target, .-target
