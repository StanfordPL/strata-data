  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode              
.target:                  #        0     0      OPC=<label>         
  movslq %ebx, %r12       #  1     0     3      OPC=movslq_r64_r32  
  decq %r12               #  2     0x3   3      OPC=decq_r64        
  notq %r12               #  3     0x6   3      OPC=notq_r64        
  xaddl %ebx, %r12d       #  4     0x9   4      OPC=xaddl_r32_r32   
  callq .set_szp_for_ebx  #  5     0xd   5      OPC=callq_label     
  retq                    #  6     0x12  1      OPC=retq            
                                                                    
.size target, .-target
