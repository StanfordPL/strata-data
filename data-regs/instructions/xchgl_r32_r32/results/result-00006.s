  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movslq %ebx, %rdx                  #  1     0     3      OPC=movslq_r64_r32  
  callq .set_szp_for_ebx             #  2     0x3   5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w    #  3     0x8   5      OPC=callq_label     
  callq .move_032_016_ecx_r10w_r11w  #  4     0xd   5      OPC=callq_label     
  callq .read_sf_into_rbx            #  5     0x12  5      OPC=callq_label     
  callq .set_sf                      #  6     0x17  5      OPC=callq_label     
  callq .read_sf_into_rcx            #  7     0x1c  5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ebx  #  8     0x21  5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ecx    #  9     0x26  5      OPC=callq_label     
  retq                               #  10    0x2b  1      OPC=retq            
                                                                               
.size target, .-target
