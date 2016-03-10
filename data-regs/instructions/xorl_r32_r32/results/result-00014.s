  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode              
.target:                  #        0     0      OPC=<label>         
  movslq %ecx, %rdx       #  1     0     3      OPC=movslq_r64_r32  
  xchgl %edx, %ebx        #  2     0x3   2      OPC=xchgl_r32_r32   
  xorq %rdx, %rbx         #  3     0x5   3      OPC=xorq_r64_r64    
  callq .set_szp_for_ebx  #  4     0x8   5      OPC=callq_label     
  callq .clear_of         #  5     0xd   5      OPC=callq_label     
  retq                    #  6     0x12  1      OPC=retq            
                                                                    
.size target, .-target
