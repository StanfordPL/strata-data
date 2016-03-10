  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x5, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx           #  2     0xa   5      OPC=callq_label     
  callq .move_byte_7_of_rbx_to_r9b  #  3     0xf   5      OPC=callq_label     
  decw %cx                          #  4     0x14  3      OPC=decw_r16        
  callq .read_zf_into_rbx           #  5     0x17  5      OPC=callq_label     
  callq .move_r9b_to_byte_5_of_rbx  #  6     0x1c  5      OPC=callq_label     
  retq                              #  7     0x21  1      OPC=retq            
                                                                              
.size target, .-target
