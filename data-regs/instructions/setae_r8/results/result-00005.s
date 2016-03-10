  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .read_cf_into_rbx           #  1     0     5      OPC=callq_label     
  movq $0x0, %rdx                   #  2     0x5   10     OPC=movq_r64_imm64  
  callq .set_szp_for_ebx            #  3     0xf   5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w   #  4     0x14  5      OPC=callq_label     
  callq .read_zf_into_rbx           #  5     0x19  5      OPC=callq_label     
  callq .move_r9b_to_byte_4_of_rbx  #  6     0x1e  5      OPC=callq_label     
  retq                              #  7     0x23  1      OPC=retq            
                                                                              
.size target, .-target
