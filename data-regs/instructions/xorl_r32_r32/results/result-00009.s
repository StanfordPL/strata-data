  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32  
  xorq %rcx, %rbx                    #  2     0x2   3      OPC=xorq_r64_r64   
  callq .move_064_032_rbx_r10d_r11d  #  3     0x5   5      OPC=callq_label    
  callq .move_byte_6_of_rbx_to_r9b   #  4     0xa   5      OPC=callq_label    
  rolb $0x1, %r9b                    #  5     0xf   3      OPC=rolb_r8_one    
  adcl %r10d, %r11d                  #  6     0x12  3      OPC=adcl_r32_r32   
  retq                               #  7     0x15  1      OPC=retq           
                                                                              
.size target, .-target
