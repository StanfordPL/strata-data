  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  xorb %cl, %r13b                    #  3     0xf   3      OPC=xorb_r8_r8      
  movsbl %cl, %r12d                  #  4     0x12  4      OPC=movsbl_r32_r8   
  callq .move_016_032_r12w_r13w_ebx  #  5     0x16  5      OPC=callq_label     
  retq                               #  6     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
