  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r12w_r13w  #  1     0     5      OPC=callq_label     
  movslq %ebx, %rdx                  #  2     0x5   3      OPC=movslq_r64_r32  
  callq .set_szp_for_bl              #  3     0x8   5      OPC=callq_label     
  callq .read_sf_into_rbx            #  4     0xd   5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  5     0x12  5      OPC=callq_label     
  callq .move_032_016_edx_r12w_r13w  #  6     0x17  5      OPC=callq_label     
  callq .read_zf_into_rcx            #  7     0x1c  5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ecx  #  8     0x21  5      OPC=callq_label     
  retq                               #  9     0x26  1      OPC=retq            
                                                                               
.size target, .-target
