  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  movzbl %cl, %edx                   #  1     0     3      OPC=movzbl_r32_r8  
  callq .move_064_032_rdx_r12d_r13d  #  2     0x3   5      OPC=callq_label    
  movzbl %bl, %ebp                   #  3     0x8   3      OPC=movzbl_r32_r8  
  xorw %bp, %r12w                    #  4     0xb   4      OPC=xorw_r16_r16   
  callq .move_032_064_r12d_r13d_rbx  #  5     0xf   5      OPC=callq_label    
  xorq %rdx, %rbp                    #  6     0x14  3      OPC=xorq_r64_r64   
  callq .set_szp_for_bl              #  7     0x17  5      OPC=callq_label    
  retq                               #  8     0x1c  1      OPC=retq           
                                                                              
.size target, .-target
