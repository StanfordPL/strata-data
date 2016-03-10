  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .set_szp_for_bl              #  1     0     5      OPC=callq_label    
  movsbq %cl, %rcx                   #  2     0x5   4      OPC=movsbq_r64_r8  
  movsbl %bl, %r10d                  #  3     0x9   4      OPC=movsbl_r32_r8  
  movsbl %cl, %r11d                  #  4     0xd   4      OPC=movsbl_r32_r8  
  callq .read_pf_into_rbx            #  5     0x11  5      OPC=callq_label    
  callq .move_016_032_r10w_r11w_ecx  #  6     0x16  5      OPC=callq_label    
  xchgl %ebx, %r11d                  #  7     0x1b  3      OPC=xchgl_r32_r32  
  retq                               #  8     0x1e  1      OPC=retq           
                                                                              
.size target, .-target
