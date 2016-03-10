  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode             
.target:                  #        0    0      OPC=<label>        
  xchgl %ecx, %ebx        #  1     0    2      OPC=xchgl_r32_r32  
  xorq %rcx, %rbx         #  2     0x2  3      OPC=xorq_r64_r64   
  callq .clear_cf         #  3     0x5  5      OPC=callq_label    
  callq .set_szp_for_ebx  #  4     0xa  5      OPC=callq_label    
  retq                    #  5     0xf  1      OPC=retq           
                                                                  
.size target, .-target
