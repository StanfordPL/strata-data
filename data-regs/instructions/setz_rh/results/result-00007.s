  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x40, %rax         #  1     0     10     OPC=movq_r64_imm64  
  movq %rax, %rax          #  2     0xa   3      OPC=movq_r64_r64    
  callq .read_zf_into_rcx  #  3     0xd   5      OPC=callq_label     
  xchgb %ah, %cl           #  4     0x12  2      OPC=xchgb_r8_rh     
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target