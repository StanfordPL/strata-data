  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movsbl %ch, %esi    #  1     0     3      OPC=movsbl_r32_rh   
  movzwq %cx, %r10    #  2     0x3   4      OPC=movzwq_r64_r16  
  xchgl %r10d, %r10d  #  3     0x7   3      OPC=xchgl_r32_r32   
  xchgq %r10, %rsi    #  4     0xa   3      OPC=xchgq_r64_r64   
  subw %si, %bx       #  5     0xd   3      OPC=subw_r16_r16    
  retq                #  6     0x10  1      OPC=retq            
                                                                
.size target, .-target
