  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .set_szp_for_ebx             #  1     0     5      OPC=callq_label     
  callq .move_032_016_ecx_r12w_r13w  #  2     0x5   5      OPC=callq_label     
  callq .move_032_016_ebx_r10w_r11w  #  3     0xa   5      OPC=callq_label     
  callq .read_sf_into_rcx            #  4     0xf   5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ecx  #  5     0x14  5      OPC=callq_label     
  movzwl %r12w, %ebx                 #  6     0x19  4      OPC=movzwl_r32_r16  
  callq .move_016_032_r12w_r13w_ebx  #  7     0x1d  5      OPC=callq_label     
  retq                               #  8     0x22  1      OPC=retq            
                                                                               
.size target, .-target
