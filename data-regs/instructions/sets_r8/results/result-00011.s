  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_sf_into_rbx          #  1     0     5      OPC=callq_label     
  callq .move_032_016_ebx_r8w_r9w  #  2     0x5   5      OPC=callq_label     
  movzwq %bx, %r11                 #  3     0xa   4      OPC=movzwq_r64_r16  
  callq .move_008_016_r8b_r9b_dx   #  4     0xe   5      OPC=callq_label     
  callq .write_dl_to_zf            #  5     0x13  5      OPC=callq_label     
  cmovzq %r11, %rbx                #  6     0x18  4      OPC=cmovzq_r64_r64  
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
