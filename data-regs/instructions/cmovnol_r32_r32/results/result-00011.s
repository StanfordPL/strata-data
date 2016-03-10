  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .set_sf                     #  1     0     5      OPC=callq_label     
  cmovll %ecx, %ebx                 #  2     0x5   3      OPC=cmovll_r32_r32  
  callq .move_064_032_rbx_r8d_r9d   #  3     0x8   5      OPC=callq_label     
  shlb $0x1, %r9b                   #  4     0xd   3      OPC=shlb_r8_one     
  callq .move_r9b_to_byte_6_of_rbx  #  5     0x10  5      OPC=callq_label     
  retq                              #  6     0x15  1      OPC=retq            
                                                                              
.size target, .-target
