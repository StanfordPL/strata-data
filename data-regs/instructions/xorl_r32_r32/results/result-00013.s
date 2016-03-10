  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movzbq %bl, %rbp                   #  1     0     4      OPC=movzbq_r64_r8  
  xaddl %ebp, %ebx                   #  2     0x4   3      OPC=xaddl_r32_r32  
  callq .move_032_016_ecx_r10w_r11w  #  3     0x7   5      OPC=callq_label    
  callq .move_016_032_r10w_r11w_ebx  #  4     0xc   5      OPC=callq_label    
  xorq %rbp, %rbx                    #  5     0x11  3      OPC=xorq_r64_r64   
  callq .set_szp_for_ebx             #  6     0x14  5      OPC=callq_label    
  retq                               #  7     0x19  1      OPC=retq           
                                                                              
.size target, .-target
