  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  xchgl %ebx, %ebx        #  1     0     2      OPC=xchgl_r32_r32  
  xchgl %ebx, %ecx        #  2     0x2   2      OPC=xchgl_r32_r32  
  xorq %rcx, %rbx         #  3     0x4   3      OPC=xorq_r64_r64   
  callq .set_szp_for_ebx  #  4     0x7   5      OPC=callq_label    
  callq .clear_cf         #  5     0xc   5      OPC=callq_label    
  retq                    #  6     0x11  1      OPC=retq           
                                                                   
.size target, .-target
