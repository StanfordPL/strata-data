  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label   
  callq .read_cf_into_rcx            #  2     0x5   5      OPC=callq_label   
  callq .move_032_016_ecx_r10w_r11w  #  3     0xa   5      OPC=callq_label   
  callq .move_016_032_r10w_r11w_ecx  #  4     0xf   5      OPC=callq_label   
  addw %bx, %cx                      #  5     0x14  3      OPC=addw_r16_r16  
  callq .read_pf_into_rbx            #  6     0x17  5      OPC=callq_label   
  callq .move_byte_2_of_rbx_to_r8b   #  7     0x1c  5      OPC=callq_label   
  callq .move_r8b_to_byte_2_of_rbx   #  8     0x21  5      OPC=callq_label   
  retq                               #  9     0x26  1      OPC=retq          
                                                                             
.size target, .-target
