  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movq $0x20, %rbp  #  1     0     10     OPC=movq_r64_imm64   
  popcntw %bp, %cx  #  2     0xa   5      OPC=popcntw_r16_r16  
  rolb $0x1, %ch    #  3     0xf   2      OPC=rolb_rh_one      
  sarq %cl, %rbx    #  4     0x11  3      OPC=sarq_r64_cl      
  callq .clear_of   #  5     0x14  5      OPC=callq_label      
  retq              #  6     0x19  1      OPC=retq             
                                                               
.size target, .-target
