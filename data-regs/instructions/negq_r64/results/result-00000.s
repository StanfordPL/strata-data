  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  movq %rbx, %rdx         #  1     0     3      OPC=movq_r64_r64   
  decq %rdx               #  2     0x3   3      OPC=decq_r64       
  notq %rdx               #  3     0x6   3      OPC=notq_r64       
  xaddq %rbx, %rdx        #  4     0x9   4      OPC=xaddq_r64_r64  
  callq .set_szp_for_rbx  #  5     0xd   5      OPC=callq_label    
  retq                    #  6     0x12  1      OPC=retq           
                                                                   
.size target, .-target
