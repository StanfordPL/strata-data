  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_032_016_ebx_r12w_r13w  #  1     0     5      OPC=callq_label      
  callq .move_016_008_bx_r8b_r9b     #  2     0x5   5      OPC=callq_label      
  xorl %ebx, %ebx                    #  3     0xa   2      OPC=xorl_r32_r32     
  callq .read_of_into_rbx            #  4     0xc   5      OPC=callq_label      
  callq .move_r9b_to_byte_2_of_rbx   #  5     0x11  5      OPC=callq_label      
  cmovpew %r13w, %bx                 #  6     0x16  5      OPC=cmovpew_r16_r16  
  xchgb %bh, %bl                     #  7     0x1b  2      OPC=xchgb_r8_rh      
  callq .move_r8b_to_byte_3_of_rbx   #  8     0x1d  5      OPC=callq_label      
  retq                               #  9     0x22  1      OPC=retq             
                                                                                
.size target, .-target
