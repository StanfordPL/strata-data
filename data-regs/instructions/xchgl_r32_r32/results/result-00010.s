  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .move_032_016_ecx_r10w_r11w  #  1     0     5      OPC=callq_label   
  xorq %r12, %r12                    #  2     0x5   3      OPC=xorq_r64_r64  
  adcl %r12d, %ebx                   #  3     0x8   3      OPC=adcl_r32_r32  
  callq .move_064_032_rbx_r12d_r13d  #  4     0xb   5      OPC=callq_label   
  callq .move_016_032_r10w_r11w_ebx  #  5     0x10  5      OPC=callq_label   
  callq .move_032_064_r12d_r13d_rcx  #  6     0x15  5      OPC=callq_label   
  retq                               #  7     0x1a  1      OPC=retq          
                                                                             
.size target, .-target
