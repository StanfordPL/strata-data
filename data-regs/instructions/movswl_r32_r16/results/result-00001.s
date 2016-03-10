  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  callq .move_016_008_cx_r8b_r9b  #  1     0     5      OPC=callq_label    
  xorq %rbx, %rbx                 #  2     0x5   3      OPC=xorq_r64_r64   
  movsbl %r9b, %eax               #  3     0x8   4      OPC=movsbl_r32_r8  
  xchgw %ax, %cx                  #  4     0xc   3      OPC=xchgw_r16_r16  
  xchgl %eax, %ebx                #  5     0xf   2      OPC=xchgl_r32_r32  
  retq                            #  6     0x11  1      OPC=retq           
                                                                           
.size target, .-target
