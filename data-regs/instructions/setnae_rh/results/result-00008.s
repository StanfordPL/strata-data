  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffffd, %rdx    #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rbx           #  2     0xa   5      OPC=callq_label     
  callq .move_032_016_edx_r8w_r9w   #  3     0xf   5      OPC=callq_label     
  callq .move_r8b_to_byte_6_of_rbx  #  4     0x14  5      OPC=callq_label     
  movb %bl, %ah                     #  5     0x19  2      OPC=movb_rh_r8      
  retq                              #  6     0x1b  1      OPC=retq            
                                                                              
.size target, .-target
