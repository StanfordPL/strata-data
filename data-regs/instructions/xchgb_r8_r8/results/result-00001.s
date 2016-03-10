  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movsbq %bl, %r8                  #  1     0     4      OPC=movsbq_r64_r8   
  movq $0x5, %r9                   #  2     0x4   10     OPC=movq_r64_imm64  
  movzbl %cl, %ebx                 #  3     0xe   3      OPC=movzbl_r32_r8   
  decb %r9b                        #  4     0x11  3      OPC=decb_r8         
  decb %r9b                        #  5     0x14  3      OPC=decb_r8         
  callq .move_032_064_r8d_r9d_rcx  #  6     0x17  5      OPC=callq_label     
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
