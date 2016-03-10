  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x0, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  movzbw %bh, %bx          #  2     0xa   4      OPC=movzbw_r16_rh   
  callq .read_sf_into_rcx  #  3     0xe   5      OPC=callq_label     
  xchgb %bl, %cl           #  4     0x13  2      OPC=xchgb_r8_r8     
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
