  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label    
  movsbl %bh, %edi                  #  2     0x5   3      OPC=movsbl_r32_rh  
  xaddl %ebx, %edi                  #  3     0x8   3      OPC=xaddl_r32_r32  
  xchgw %bx, %r9w                   #  4     0xb   4      OPC=xchgw_r16_r16  
  callq .move_r9b_to_byte_2_of_rbx  #  5     0xf   5      OPC=callq_label    
  callq .move_r8b_to_byte_3_of_rbx  #  6     0x14  5      OPC=callq_label    
  xchgb %bl, %bh                    #  7     0x19  2      OPC=xchgb_rh_r8    
  retq                              #  8     0x1b  1      OPC=retq           
                                                                             
.size target, .-target
