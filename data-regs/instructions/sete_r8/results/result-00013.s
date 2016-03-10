  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_zf_into_rcx            #  1     0     5      OPC=callq_label   
  callq .move_032_016_ecx_r10w_r11w  #  2     0x5   5      OPC=callq_label   
  xorw %r11w, %r10w                  #  3     0xa   4      OPC=xorw_r16_r16  
  callq .move_016_032_r10w_r11w_ebx  #  4     0xe   5      OPC=callq_label   
  retq                               #  5     0x13  1      OPC=retq          
                                                                             
.size target, .-target
