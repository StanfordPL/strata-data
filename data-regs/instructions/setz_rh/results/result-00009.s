  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  stc                             #  1     0     1      OPC=stc             
  movq $0xfffffffffffffff0, %rax  #  2     0x1   10     OPC=movq_r64_imm64  
  callq .read_cf_into_rbx         #  3     0xb   5      OPC=callq_label     
  callq .read_zf_into_rcx         #  4     0x10  5      OPC=callq_label     
  xchgb %cl, %bl                  #  5     0x15  2      OPC=xchgb_r8_r8     
  xchgb %ah, %bl                  #  6     0x17  2      OPC=xchgb_r8_rh     
  retq                            #  7     0x19  1      OPC=retq            
                                                                            
.size target, .-target
