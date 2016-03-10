  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movq %xmm1, %r14                  #  1     0     5      OPC=movq_r64_xmm   
  movq %r14, %rbx                   #  2     0x5   3      OPC=movq_r64_r64   
  callq .move_byte_4_of_rbx_to_r9b  #  3     0x8   5      OPC=callq_label    
  movzbl %r9b, %ebx                 #  4     0xd   4      OPC=movzbl_r32_r8  
  retq                              #  5     0x11  1      OPC=retq           
                                                                             
.size target, .-target
