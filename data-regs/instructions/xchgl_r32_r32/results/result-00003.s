  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_032_016_ecx_r10w_r11w  #  1     0     5      OPC=callq_label     
  callq .set_szp_for_bl              #  2     0x5   5      OPC=callq_label     
  callq .move_032_016_ebx_r8w_r9w    #  3     0xa   5      OPC=callq_label     
  callq .read_pf_into_rbx            #  4     0xf   5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_ebx  #  5     0x14  5      OPC=callq_label     
  movq $0xffffffffffffffff, %rcx     #  6     0x19  10     OPC=movq_r64_imm64  
  callq .move_016_032_r8w_r9w_ecx    #  7     0x23  5      OPC=callq_label     
  retq                               #  8     0x28  1      OPC=retq            
                                                                               
.size target, .-target
