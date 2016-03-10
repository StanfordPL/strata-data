  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_pf_into_rcx          #  1     0     5      OPC=callq_label     
  salb $0x1, %ch                   #  2     0x5   2      OPC=salb_rh_one     
  movq $0x0, %rbx                  #  3     0x7   10     OPC=movq_r64_imm64  
  xorl %ecx, %ebx                  #  4     0x11  2      OPC=xorl_r32_r32    
  callq .move_032_016_ebx_r8w_r9w  #  5     0x13  5      OPC=callq_label     
  movb %r8b, %bl                   #  6     0x18  3      OPC=movb_r8_r8      
  retq                             #  7     0x1b  1      OPC=retq            
                                                                             
.size target, .-target
