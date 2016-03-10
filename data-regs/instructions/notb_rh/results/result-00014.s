  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rbx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  movzbq %r9b, %rdi                #  3     0xf   4      OPC=movzbq_r64_r8   
  movsbl %dil, %ecx                #  4     0x13  4      OPC=movsbl_r32_r8   
  sarq %cl, %rbx                   #  5     0x17  3      OPC=sarq_r64_cl     
  xorb %bl, %ah                    #  6     0x1a  2      OPC=xorb_rh_r8      
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
