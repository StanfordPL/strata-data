  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x10, %r13         #  2     0x5   10     OPC=movq_r64_imm64  
  adcw %bx, %r13w          #  3     0xf   4      OPC=adcw_r16_r16    
  callq .read_pf_into_rbx  #  4     0x13  5      OPC=callq_label     
  retq                     #  5     0x18  1      OPC=retq            
                                                                     
.size target, .-target
