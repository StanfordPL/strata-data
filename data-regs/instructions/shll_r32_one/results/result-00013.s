  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .move_032_016_ebx_r8w_r9w  #  1     0     5      OPC=callq_label     
  callq .move_016_032_r8w_r9w_ebx  #  2     0x5   5      OPC=callq_label     
  movq $0xffffffffffffffff, %r11   #  3     0xa   10     OPC=movq_r64_imm64  
  xorq %rax, %rax                  #  4     0x14  3      OPC=xorq_r64_r64    
  addq %rax, %r11                  #  5     0x17  3      OPC=addq_r64_r64    
  adcl %ebx, %ebx                  #  6     0x1a  2      OPC=adcl_r32_r32    
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
